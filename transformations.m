
let
    Source = Csv.Document(File.Contents("Sample - Superstore.csv"), [Delimiter=",", Columns=21, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    PromoteHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangedType = Table.TransformColumnTypes(PromoteHeaders, {
        {"Order Date", type date},
        {"Ship Date", type date},
        {"Sales", type number},
        {"Quantity", Int64.Type},
        {"Discount", type number},
        {"Profit", type number}
    }),
    AddedShipDuration = Table.AddColumn(ChangedType, "Ship Duration (Days)", each Duration.Days([Ship Date] - [Order Date]), Int64.Type),
    RemovedNulls = Table.SelectRows(AddedShipDuration, each [Sales] <> null and [Profit] <> null),
    CleanedData = Table.RemoveColumns(RemovedNulls, {"Row ID"})
in
    CleanedData
