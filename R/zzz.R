.onAttach <- function(libname, pkgname) {
  pd <- utils::packageDescription(pkgname);
  packageStartupMessage(pkgname, " v", pd$Version,
                        " successfully loaded. See ?",
                        pkgname, " for help.");
  message("------------------")
  message("Note: the first time you run the function you will get a useless warning message from xgboost. Please ignore this. We are still trying to figure out how to turn this off.")
}
