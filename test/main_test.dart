import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_moviles2/model/ticket_model.dart';
import 'package:proyecto_moviles2/model/usuario_model.dart';

void main() {
  group('Pruebas de Modelos', () {
    test('Creación de Usuario', () {
      final usuario = Usuario(
        id: '1',
        username: 'test_user',
        email: 'test@example.com',
        nombreCompleto: 'Test User',
        fechaCreacion: DateTime.now(),
        rol: 'user',
      );
      expect(usuario.nombreCompleto, 'Test User');
      expect(usuario.rol, 'user');
    });

    test('Creación de Ticket', () {
      final ticket = Ticket(
        id: '1',
        titulo: 'Problema',
        descripcion: 'Descripción',
        estado: 'abierto',
        userId: '1',
        usuarioNombre: 'Test User',
        fechaCreacion: DateTime.now(),
        fechaActualizacion: DateTime.now(),
        prioridad: 'media',
        categoria: 'general',
      );
      expect(ticket.titulo, 'Problema');
      expect(ticket.estado, 'abierto');
    });

    test('Actualización de Estado de Ticket', () {
      final ticket = Ticket(
        id: '1',
        titulo: 'Problema',
        descripcion: 'Descripción',
        estado: 'abierto',
        userId: '1',
        usuarioNombre: 'Test User',
        fechaCreacion: DateTime.now(),
        fechaActualizacion: DateTime.now(),
        prioridad: 'media',
        categoria: 'general',
      );

      // Como 'estado' es final, no podemos modificarlo directamente
      // Necesitarías crear un nuevo ticket o hacer que estado no sea final
      final updatedTicket = Ticket(
        id: ticket.id,
        titulo: ticket.titulo,
        descripcion: ticket.descripcion,
        estado: 'cerrado', // Estado actualizado
        userId: ticket.userId,
        usuarioNombre: ticket.usuarioNombre,
        fechaCreacion: ticket.fechaCreacion,
        fechaActualizacion: DateTime.now(), // Actualizamos la fecha
        prioridad: ticket.prioridad,
        categoria: ticket.categoria,
      );

      expect(updatedTicket.estado, 'cerrado');
    });
  });
}
