get_os<-function(){
  if (Sys.info()["sysname"]=="Windows" & Sys.info()["nodename"] == "BI-STATISTICS"){
    "windows_server"
  }
  else if (Sys.info()["sysname"] == "Darwin") {
    "mac"
  }
  else if (.Platform$OS.type == "windows" & Sys.info()["nodename"] != "BI-STATISTICS"){
    "windows"
  }
  else if (Sys.info()["sysname"]=="Linux"){
    "Linux"
  }
  else {stop("Unknown OS")}
}
