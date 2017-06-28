Param(
  [Parameter(Mandatory=$True,Position=1)]
  [string]$name,
  [string]$tag
)

docker build --no-cache -t $name .

if ($tag) { docker tag $name $name':'$tag }
