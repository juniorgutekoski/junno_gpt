import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({
    super.key,
    required this.nomeCliente,
    required this.statusPedido,
    required this.numeroPedido,
    required this.dataPedido,
  });
  final String nomeCliente;
  final Status statusPedido;
  final String numeroPedido;
  final String dataPedido;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Row(
        children: [
          statusDefine(status: statusPedido)!.icon,
          const SizedBox(width: 10),
          Text(nomeCliente.toUpperCase()),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            statusDefine(status: statusPedido)!.status,
            Text("Pedido $numeroPedido"),
            Text("Data $dataPedido"),
            const Divider()
          ],
        ),
      ),
      trailing: const Icon(Icons.more_vert),
      isThreeLine: true,
    );
  }
}

StatusModel? statusDefine({required Status status}) {
  switch (status) {
    case Status.pendente:
      return StatusModel(
        status: const Text('Pendente', style: TextStyle(color: Colors.orange)),
        icon: const Icon(
          Icons.av_timer,
          color: Colors.orange,
        ),
      );
    case Status.enviado:
      return StatusModel(
        status:
            const Text('Enviado', style: TextStyle(color: Colors.lightBlue)),
        icon: const Icon(
          Icons.local_shipping_outlined,
          color: Colors.lightBlue,
        ),
      );
    case Status.faturado:
      return StatusModel(
        status:
            const Text('Faturado', style: TextStyle(color: Colors.blueAccent)),
        icon: const Icon(
          Icons.receipt_long,
          color: Colors.blue,
        ),
      );
    case Status.entregue:
      return StatusModel(
        status: const Text('Entregue', style: TextStyle(color: Colors.green)),
        icon: const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    case Status.cancelado:
      return StatusModel(
        status: const Text('Cancelado', style: TextStyle(color: Colors.red)),
        icon: const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
  }
}

class StatusModel {
  final Text status;
  final Icon icon;

  StatusModel({required this.status, required this.icon});
}

enum Status { pendente, faturado, enviado, entregue, cancelado }
