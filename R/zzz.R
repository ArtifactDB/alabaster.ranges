.onLoad <- function(libname, pkgname) {
    registerValidateObjectFunction("sequence_information", function(path) {})
    registerValidateObjectFunction("genomic_ranges", function(path) {})

    registerReadObjectFunction("sequence_information", readSeqinfo)
    registerReadObjectFunction("genomic_ranges", readGRanges)
}

.onUnload <- function(libname, pkgname) {
    registerValidateObjectFunction("sequence_information", NULL)
    registerValidateObjectFunction("genomic_ranges", NULL)

    registerReadObjectFunction("sequence_information", NULL)
    registerReadObjectFunction("genomic_ranges", NULL)
}
