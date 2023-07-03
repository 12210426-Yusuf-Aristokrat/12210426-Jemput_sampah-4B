import 'dart:convert';

class UserModel {
	num? id;
	String? namaLengkap;
	String? email;
	String? password;
	String? token;
	String? foto;

	UserModel({
		this.id, 
		this.namaLengkap, 
		this.email, 
		this.password, 
		this.token, 
		this.foto, 
	});

	factory UserModel.fromMap(Map<String, dynamic> data) => UserModel(
				id: data['id'] as int?,
				namaLengkap: data['nama_lengkap'] as String?,
				email: data['email'] as String? ,
				password: data['password'] as String?,
				token: data['token'] as String?,
				foto: data['foto'] as String?,
				// id: num.tryParse(data['id'].toString()),
				// namaLengkap: data['nama_lengkap']?.toString(),
				// email: data['email']?.toString(),
				// password: data['password']?.toString(),
				// token: data['token']?.toString(),
				// foto: data['foto']?.toString(),
			);

	Map<String, dynamic> toMap() => {
				if (id != null) 'id': id,
				if (namaLengkap != null) 'nama_lengkap': namaLengkap,
				if (email != null) 'email': email,
				if (password != null) 'password': password,
				if (token != null) 'token': token,
				if (foto != null) 'foto': foto,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserModel].
	factory UserModel.fromJson(String data) {
		return UserModel.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [UserModel] to a JSON string.
	String toJson() => json.encode(toMap());
}
