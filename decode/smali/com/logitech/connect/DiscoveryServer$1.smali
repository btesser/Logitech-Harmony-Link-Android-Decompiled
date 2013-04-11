.class Lcom/logitech/connect/DiscoveryServer$1;
.super Ljava/lang/Object;
.source "DiscoveryServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/connect/DiscoveryServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/DiscoveryServer;


# direct methods
.method constructor <init>(Lcom/logitech/connect/DiscoveryServer;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/logitech/connect/DiscoveryServer$1;->this$0:Lcom/logitech/connect/DiscoveryServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 56
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/connect/DiscoveryServer$1;->this$0:Lcom/logitech/connect/DiscoveryServer;

    move-object v5, v0

    iget-object v5, v5, Lcom/logitech/connect/DiscoveryServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 59
    .local v19, newSocket:Ljava/net/Socket;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 60
    .local v15, in:Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v10, v5, [B

    .line 61
    .local v10, buf:[B
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v15, v10, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    .line 63
    .local v20, read:I
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object v1, v10

    move v2, v5

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 64
    .local v18, message:Ljava/lang/String;
    const-string v5, ";"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 65
    .local v16, keyval:[Ljava/lang/String;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v17, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move v5, v0

    if-ge v14, v5, :cond_0

    .line 68
    aget-object v5, v16, v14

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 69
    .local v21, t:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v21, v5

    const/4 v6, 0x1

    aget-object v6, v21, v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 75
    .end local v21           #t:[Ljava/lang/String;
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v22, versionInfo:Ljava/lang/StringBuilder;
    const-string v5, "openApiVersion"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "openApiVersion"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v5, ":"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "minimumOpenApiClientVersionRequired"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "minimumOpenApiClientVersionRequired"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v5, ":"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recommendedOpenApiClientVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recommendedOpenApiClientVersion"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v5, "status"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 90
    .local v13, hubStatus:Ljava/lang/String;
    const/4 v4, 0x0

    .line 91
    .local v4, tar:Lcom/logitech/connect/Target;
    if-eqz v13, :cond_1

    .line 92
    new-instance v4, Lcom/logitech/connect/Target;

    .end local v4           #tar:Lcom/logitech/connect/Target;
    const-string v5, "email"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "uuid"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "0"

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/logitech/connect/Target;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v10           #buf:[B
    .restart local v4       #tar:Lcom/logitech/connect/Target;
    :goto_2
    move-object/from16 v21, v4

    .line 103
    .local v21, t:Lcom/logitech/connect/Target;
    const-string v5, "hubId"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 104
    .local v12, hubId:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/logitech/connect/Target;->setHubId(Ljava/lang/String;)V

    .line 105
    const-string v5, "host_name"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #tar:Lcom/logitech/connect/Target;
    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/connect/Target;->setHostName(Ljava/lang/String;)V

    .line 106
    const-string v5, "current_fw_version"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/connect/Target;->setFWVersion(Ljava/lang/String;)V

    .line 109
    if-eqz v13, :cond_2

    .line 110
    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/logitech/connect/Target;->setHubStatus(Ljava/lang/String;)V

    .line 115
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/connect/DiscoveryServer$1;->this$0:Lcom/logitech/connect/DiscoveryServer;

    move-object v5, v0

    iget-object v5, v5, Lcom/logitech/connect/DiscoveryServer;->mMainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/logitech/connect/DiscoveryServer$1$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/DiscoveryServer$1$1;-><init>(Lcom/logitech/connect/DiscoveryServer$1;Lcom/logitech/connect/Target;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    const/16 v19, 0x0

    .line 127
    goto/16 :goto_0

    .line 96
    .end local v12           #hubId:Ljava/lang/String;
    .end local v21           #t:Lcom/logitech/connect/Target;
    .restart local v4       #tar:Lcom/logitech/connect/Target;
    .restart local v10       #buf:[B
    :cond_1
    :try_start_3
    new-instance v4, Lcom/logitech/connect/Target;

    .end local v4           #tar:Lcom/logitech/connect/Target;
    const-string v5, "email"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ip"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "uuid"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "port"

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "+"

    .end local v10           #buf:[B
    const-string v11, "."

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/logitech/connect/Target;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4       #tar:Lcom/logitech/connect/Target;
    goto/16 :goto_2

    .line 112
    .end local v4           #tar:Lcom/logitech/connect/Target;
    .restart local v12       #hubId:Ljava/lang/String;
    .restart local v21       #t:Lcom/logitech/connect/Target;
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/logitech/connect/Target;->setHubStatus(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 121
    .end local v12           #hubId:Ljava/lang/String;
    .end local v13           #hubStatus:Ljava/lang/String;
    .end local v14           #i:I
    .end local v15           #in:Ljava/io/InputStream;
    .end local v16           #keyval:[Ljava/lang/String;
    .end local v17           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #message:Ljava/lang/String;
    .end local v20           #read:I
    .end local v21           #t:Lcom/logitech/connect/Target;
    .end local v22           #versionInfo:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 125
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V

    .line 126
    const/16 v19, 0x0

    .line 127
    goto/16 :goto_0

    .line 125
    :catchall_0
    move-exception v5

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V

    .line 126
    const/16 v19, 0x0

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 128
    .end local v19           #newSocket:Ljava/net/Socket;
    :catch_1
    move-exception v5

    move-object v11, v5

    .line 129
    .local v11, e:Ljava/lang/Exception;
    return-void
.end method
