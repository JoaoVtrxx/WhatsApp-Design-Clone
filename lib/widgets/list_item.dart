import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_whatsappclone/models/contato_model.dart';
import 'dart:math';

class ListItemWidget extends StatelessWidget {
  final ContatoModel contato;

  const ListItemWidget({super.key, required this.contato});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomNumber = random.nextInt(50);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: ListTile(
        subtitle: (contato.euMandei)
            ? Row(
                children: [
                  SvgPicture.asset('assets/readicon.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    contato.ultimaMensagem,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              )
            : Text(
                contato.ultimaMensagem,
                style: const TextStyle(color: Colors.grey),
              ),
        title: Text(
          contato.nome,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                contato.hora,
                style: TextStyle(
                    color: (contato.lida) ? Colors.grey : Colors.blue),
              ),
            ),
            (contato.lida)
                ? const SizedBox()
                : Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    width: 30,
                    child: Text(
                      randomNumber.toString(),
                      textAlign: TextAlign.center,
                    ),
                  )
          ],
        ),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(contato.foto),
        ),
      ),
    );
  }
}
