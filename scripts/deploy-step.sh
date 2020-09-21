#/bin/bash
echo "deploy step"
cat > index.html <<EOF
Hello world!
EOF
aws s3 cp index.html s3://raghu-static-html-bucket


