# This is where I control the code activation from, simply via invoking the classes, higher version is the lates revision
node 'WIN-BNUC0CKQV84' {
#node 'default' {
 #  class {winsql2017v3::mssql:}
  class {winsql2017v4::mssql:}
}
