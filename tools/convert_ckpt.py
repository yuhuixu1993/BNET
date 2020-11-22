import torch


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('src_path')
    parser.add_argument('dst_path')
    args = parser.parse_args()

    ckpt = torch.load(args.src_path)

    prefixs = []
    for key in ckpt['state_dict'].keys():
        if 'bnconv3' in key:
            prefix = key.split('.bnconv3.')[0]
            prefixs.append(prefix)

    new_state_dict = {}
    for key, val in ckpt['state_dict'].items():
        if any(key.startswith(pre) for pre in prefixs):
            key_new = key.replace('bnconv3', 'bnet3.bnconv')
            key_new = key_new.replace('bn3', 'bnet3')
        else:
            key_new = key
        new_state_dict[key_new] = val

    ckpt_new = {}
    for key, val in ckpt.items():
        if key != 'state_dict':
            ckpt_new[key] = val
    ckpt_new['state_dict'] = new_state_dict

    torch.save(ckpt_new, args.dst_path)
