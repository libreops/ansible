# HSGR Ansible

Ansible scripts for Hackerspace.gr infra

## Requirements

1. Ansible (duh..)
2. GPG
3. Running gpg-agent

## Usage

Assuming you have sudo access and `hosts.gpg` is decrypted, to run the whole thing:

```
ansible-playbook -v main.yml
```

## License

Licensed under the [Creative Commons Attribution-ShareAlike 3.0 License](LICENSE).
