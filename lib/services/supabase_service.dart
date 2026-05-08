import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final SupabaseClient _client = Supabase.instance.client;

  // ✅ CREATE - Naya record insert karna
  Future<void> createRecord({
    required String fullName,
    required String email,
    required String phone,
    required String address,
    required String gender,
  }) async {
    await _client.from('submissions').insert({
      'full_name': fullName,
      'email': email,
      'phone': phone,
      'address': address,
      'gender': gender,
    });
  }

  // ✅ READ - Sare records fetch karna
  Future<List<Map<String, dynamic>>> getAllRecords() async {
    final response = await _client
        .from('submissions')
        .select()
        .order('created_at', ascending: false);
    return List<Map<String, dynamic>>.from(response);
  }

  // ✅ UPDATE - Record update karna
  Future<void> updateRecord({
    required String id,
    required String fullName,
    required String email,
    required String phone,
    required String address,
    required String gender,
  }) async {
    await _client.from('submissions').update({
      'full_name': fullName,
      'email': email,
      'phone': phone,
      'address': address,
      'gender': gender,
    }).eq('id', id);
  }

  // ✅ DELETE - Record delete karna
  Future<void> deleteRecord(String id) async {
    await _client.from('submissions').delete().eq('id', id);
  }
}