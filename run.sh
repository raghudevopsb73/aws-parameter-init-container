for param in ${PARAMETERS} ; do
  PASS=$(aws ssm get-parameter --name $param --with-decryption --query 'Parameter.Value' --output text)
  echo export $param=$PASS >>params
done

cat params
