// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChats,
    required TResult Function(String chatId) getMessagesInChat,
    required TResult Function(MessageModel messageModel) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChats,
    TResult? Function(String chatId)? getMessagesInChat,
    TResult? Function(MessageModel messageModel)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChats,
    TResult Function(String chatId)? getMessagesInChat,
    TResult Function(MessageModel messageModel)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessagesInChat value) getMessagesInChat,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetChatsImplCopyWith<$Res> {
  factory _$$GetChatsImplCopyWith(
          _$GetChatsImpl value, $Res Function(_$GetChatsImpl) then) =
      __$$GetChatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetChatsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetChatsImpl>
    implements _$$GetChatsImplCopyWith<$Res> {
  __$$GetChatsImplCopyWithImpl(
      _$GetChatsImpl _value, $Res Function(_$GetChatsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetChatsImpl implements _GetChats {
  const _$GetChatsImpl();

  @override
  String toString() {
    return 'HomeEvent.getChats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetChatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChats,
    required TResult Function(String chatId) getMessagesInChat,
    required TResult Function(MessageModel messageModel) sendMessage,
  }) {
    return getChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChats,
    TResult? Function(String chatId)? getMessagesInChat,
    TResult? Function(MessageModel messageModel)? sendMessage,
  }) {
    return getChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChats,
    TResult Function(String chatId)? getMessagesInChat,
    TResult Function(MessageModel messageModel)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessagesInChat value) getMessagesInChat,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return getChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(this);
    }
    return orElse();
  }
}

abstract class _GetChats implements HomeEvent {
  const factory _GetChats() = _$GetChatsImpl;
}

/// @nodoc
abstract class _$$GetMessagesInChatImplCopyWith<$Res> {
  factory _$$GetMessagesInChatImplCopyWith(_$GetMessagesInChatImpl value,
          $Res Function(_$GetMessagesInChatImpl) then) =
      __$$GetMessagesInChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$GetMessagesInChatImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetMessagesInChatImpl>
    implements _$$GetMessagesInChatImplCopyWith<$Res> {
  __$$GetMessagesInChatImplCopyWithImpl(_$GetMessagesInChatImpl _value,
      $Res Function(_$GetMessagesInChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$GetMessagesInChatImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMessagesInChatImpl implements _GetMessagesInChat {
  const _$GetMessagesInChatImpl(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'HomeEvent.getMessagesInChat(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesInChatImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesInChatImplCopyWith<_$GetMessagesInChatImpl> get copyWith =>
      __$$GetMessagesInChatImplCopyWithImpl<_$GetMessagesInChatImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChats,
    required TResult Function(String chatId) getMessagesInChat,
    required TResult Function(MessageModel messageModel) sendMessage,
  }) {
    return getMessagesInChat(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChats,
    TResult? Function(String chatId)? getMessagesInChat,
    TResult? Function(MessageModel messageModel)? sendMessage,
  }) {
    return getMessagesInChat?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChats,
    TResult Function(String chatId)? getMessagesInChat,
    TResult Function(MessageModel messageModel)? sendMessage,
    required TResult orElse(),
  }) {
    if (getMessagesInChat != null) {
      return getMessagesInChat(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessagesInChat value) getMessagesInChat,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getMessagesInChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return getMessagesInChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getMessagesInChat != null) {
      return getMessagesInChat(this);
    }
    return orElse();
  }
}

abstract class _GetMessagesInChat implements HomeEvent {
  const factory _GetMessagesInChat(final String chatId) =
      _$GetMessagesInChatImpl;

  String get chatId;
  @JsonKey(ignore: true)
  _$$GetMessagesInChatImplCopyWith<_$GetMessagesInChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageModel messageModel});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageModel = null,
  }) {
    return _then(_$SendMessageImpl(
      null == messageModel
          ? _value.messageModel
          : messageModel // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.messageModel);

  @override
  final MessageModel messageModel;

  @override
  String toString() {
    return 'HomeEvent.sendMessage(messageModel: $messageModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.messageModel, messageModel) ||
                other.messageModel == messageModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChats,
    required TResult Function(String chatId) getMessagesInChat,
    required TResult Function(MessageModel messageModel) sendMessage,
  }) {
    return sendMessage(messageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChats,
    TResult? Function(String chatId)? getMessagesInChat,
    TResult? Function(MessageModel messageModel)? sendMessage,
  }) {
    return sendMessage?.call(messageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChats,
    TResult Function(String chatId)? getMessagesInChat,
    TResult Function(MessageModel messageModel)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(messageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessagesInChat value) getMessagesInChat,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessagesInChat value)? getMessagesInChat,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements HomeEvent {
  const factory _SendMessage(final MessageModel messageModel) =
      _$SendMessageImpl;

  MessageModel get messageModel;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  Map<String, List<MessageModel>>? get messages =>
      throw _privateConstructorUsedError;
  List<ChatModel>? get chats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Map<String, List<MessageModel>>? messages, List<ChatModel>? chats});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? chats = freezed,
  }) {
    return _then(_value.copyWith(
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Map<String, List<MessageModel>>?,
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<MessageModel>>? messages, List<ChatModel>? chats});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
    Object? chats = freezed,
  }) {
    return _then(_$HomeStateImpl(
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Map<String, List<MessageModel>>?,
      chats: freezed == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {final Map<String, List<MessageModel>>? messages = null,
      final List<ChatModel>? chats = null})
      : _messages = messages,
        _chats = chats,
        super._();

  final Map<String, List<MessageModel>>? _messages;
  @override
  @JsonKey()
  Map<String, List<MessageModel>>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableMapView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<ChatModel>? _chats;
  @override
  @JsonKey()
  List<ChatModel>? get chats {
    final value = _chats;
    if (value == null) return null;
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(messages: $messages, chats: $chats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final Map<String, List<MessageModel>>? messages,
      final List<ChatModel>? chats}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  Map<String, List<MessageModel>>? get messages;
  @override
  List<ChatModel>? get chats;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
