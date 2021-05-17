mkdir -p environments
cmd=$@
echo $cmd
docker image build -t awsjyo .
result="docker container run -i -t -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION -e CSP_CMD=\"${cmd}\" awsjyo"
#echo $result
eval "$result"
