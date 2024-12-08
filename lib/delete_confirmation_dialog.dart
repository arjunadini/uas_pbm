import 'package:flutter/material.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final void Function() onCancel;
  final void Function() onDelete;

  const DeleteConfirmationDialog(
      {super.key, required this.onCancel, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Konfirmasi Hapus'),
      content: const Text('Apakah Anda yakin ingin menghapus tugas ini?'),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: const Text('Batal'),
        ),
        TextButton(
          onPressed: onDelete,
          child: const Text('Hapus'),
        ),
      ],
    );
  }
}
