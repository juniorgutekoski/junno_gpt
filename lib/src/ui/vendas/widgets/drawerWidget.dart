import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LUTAL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'adm.lutaquimica@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 8),
                Text(
                  'Banco: 461 - Asaas I.P S.A\nAgência: 0001 Conta: 940446-9',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Você possui R\$ 914,39 disponíveis para antecipar. Toque para saber mais.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: const Icon(Icons.help),
                  title: const Text('Perguntas Frequentes'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Início'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const Text('Resumo'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.payment),
                  title: const Text('Cobrar Agora'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.create),
                  title: const Text('Criar cobrança'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.link),
                  title: const Text('Criar Link de Pagamento'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Meus clientes'),
                  onTap: () {},
                  trailing: const Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  leading: const Icon(Icons.receipt),
                  title: const Text('Cobranças'),
                  onTap: () {},
                  trailing: const Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  leading: const Icon(Icons.qr_code),
                  title: const Text('Pix'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.credit_card),
                  title: const Text('Parcelamentos'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.repeat),
                  title: const Text('Assinaturas'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.work),
                  title: const Text('Links de pagamento'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
