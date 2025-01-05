export VAULT_ADDR=http://vault_dev:8201
export VAULT_TOKEN=00000000-0000-0000-0000-000000000000

# give some time for Vault to start and be ready
sleep 10

# Insert secrets
vault kv put secret/Hemmeligheder \
ConnectionString="mongodb+srv://sorenrefsgaard:qwerty135@cluster0.t9p3l.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0" \
Issuer="http://authservice:8080" \
Secret="2aVpT8wE1O8hCxFy8X7q7N3/1Aw3NH0XrPlF1v8y2+k=" \
# Loop forever to prevent container from terminating
while :
do
    sleep 3600
done
