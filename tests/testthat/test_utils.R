context("testing utils")

ac <- "P27361"

## test_that("upNames", {
##     x <- UniProtProtein(ac)
##     nms0 <- c("accession", "name", "protein", "gene", "organism",
##               "reference", "comment", "dbReference",
##               "proteinExistence", "keyword", "feature", "evidence",
##               "sequence")
##     expect_identical(UniProt.REST:::upNames(x), nms0)
## })


test_that("upGet", {
    x <- UniProtProtein(ac)
    expect_error(UniProt.REST:::upGet(x, "accessions"))
    accs0 <- c("P27361", "A8CZ58", "B0LPG3", "Q8NHX1")
    ## accs <- UniProt.REST:::upGet(x, "accession")
    ## expect_identical(accs, accs0)
})
