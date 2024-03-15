import '../models/contato_model.dart';

class ContatoRepository {
  static List<ContatoModel> listContatos = [
    ContatoModel(
      nome: 'math',
      ultimaMensagem: 'ta ficando louco?',
      hora: '08:44 PM',
      foto: 'assets/math.png',
      lida: false,
      euMandei: false,
    ),
    ContatoModel(
      nome: 'joao 😎',
      ultimaMensagem: 'oieee',
      hora: '07:03 PM',
      foto: 'assets/joao.png',
      lida: true,
      euMandei: true,
    ),
    ContatoModel(
      nome: 'after <3',
      ultimaMensagem: 'ana: vamooo',
      hora: '07:00 PM',
      foto: 'assets/after.png',
      lida: false,
      euMandei: false,
    ),
    ContatoModel(
      nome: 'M. F.',
      ultimaMensagem: 'ta bem!',
      hora: '05:15 PM',
      foto: 'assets/maria.png',
      lida: true,
      euMandei: true,
    ),
    ContatoModel(
      nome: 'Familia 🏠',
      ultimaMensagem: 'Pai: comprem pao',
      hora: '03:45 PM',
      foto: 'assets/familia.png',
      lida: false,
      euMandei: false,
    ),
    ContatoModel(
      nome: 'Elon Musk',
      ultimaMensagem: 'Tem como passar aqui na oficina?',
      hora: '11:57 AM',
      foto: 'assets/elon.png',
      lida: false,
      euMandei: false,
    ),
    ContatoModel(
      nome: 'Ramon',
      ultimaMensagem: 'To aqui ja',
      hora: '10:50 AM',
      foto: 'assets/ramon.png',
      lida: true,
      euMandei: false,
    ),
    ContatoModel(
      nome: 'Comitiva',
      ultimaMensagem: 'maluco: blz',
      hora: '10:33 AM',
      foto: 'assets/comitiva.png',
      lida: true,
      euMandei: false,
    ),
    ContatoModel(
      nome: 'CC UFSM',
      ultimaMensagem: 'Baratto: e o disassembler ksks',
      hora: '09:20 AM',
      foto: 'assets/ufsm.png',
      lida: false,
      euMandei: false,
    ),
  ];
}
