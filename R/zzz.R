.onLoad <- function(libname, pkgname) {
    registerValidateObjectFunction("sequence_information", function(path) {})
    registerReadObjectFunction("sequence_information", readSeqinfo)
}

.onUnload <- function(libname, pkgname) {
    registerValidateObjectFunction("sequence_information", NULL)
    registerReadObjectFunction("sequence_information", NULL)
}
