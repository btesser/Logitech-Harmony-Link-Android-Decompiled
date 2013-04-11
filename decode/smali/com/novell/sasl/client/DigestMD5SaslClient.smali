.class public Lcom/novell/sasl/client/DigestMD5SaslClient;
.super Ljava/lang/Object;
.source "DigestMD5SaslClient.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClient;


# static fields
.field private static final DIGEST_METHOD:Ljava/lang/String; = "AUTHENTICATE"

.field private static final NONCE_BYTE_COUNT:I = 0x20

.field private static final NONCE_HEX_COUNT:I = 0x40

.field private static final STATE_DIGEST_RESPONSE_SENT:I = 0x1

.field private static final STATE_DISPOSED:I = 0x4

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_INVALID_SERVER_RESPONSE:I = 0x3

.field private static final STATE_VALID_SERVER_RESPONSE:I = 0x2


# instance fields
.field private m_HA1:[C

.field private m_authorizationId:Ljava/lang/String;

.field private m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private m_clientNonce:Ljava/lang/String;

.field private m_dc:Lcom/novell/sasl/client/DigestChallenge;

.field private m_digestURI:Ljava/lang/String;

.field private m_name:Ljava/lang/String;

.field private m_props:Ljava/util/Map;

.field private m_protocol:Ljava/lang/String;

.field private m_qopValue:Ljava/lang/String;

.field private m_realm:Ljava/lang/String;

.field private m_serverName:Ljava/lang/String;

.field private m_state:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    .line 179
    iput-object p4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_props:Ljava/util/Map;

    .line 180
    iput-object p5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    .line 183
    return-void
.end method

.method private createDigestResponse([B)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 567
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 570
    new-instance v0, Lcom/novell/sasl/client/DigestChallenge;

    invoke-direct {v0, p1}, Lcom/novell/sasl/client/DigestChallenge;-><init>([B)V

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getQop()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v8, :cond_2

    .line 576
    const-string v0, "auth"

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    .line 581
    const/4 v0, 0x3

    new-array v5, v0, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    .line 582
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getRealms()Ljava/util/ArrayList;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 584
    if-nez v1, :cond_3

    .line 586
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    const-string v2, "Realm"

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v6

    .line 602
    :goto_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string v2, "Password"

    invoke-direct {v0, v2, v6}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    aput-object v0, v5, v8

    .line 605
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 606
    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v2, "Name"

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v7

    .line 612
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-interface {v0, v5}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 624
    if-le v1, v8, :cond_7

    .line 626
    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getSelectedIndexes()[I

    move-result-object v1

    .line 629
    array-length v0, v1

    if-lez v0, :cond_6

    .line 630
    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v0

    aget v1, v1, v6

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    .line 638
    :goto_2
    invoke-virtual {p0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getClientNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    .line 640
    aget-object v0, v5, v7

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 642
    aget-object v0, v5, v7

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 644
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "No user name was specified."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_2
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Client only supports qop of \'auth\'"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_3
    if-ne v1, v8, :cond_4

    .line 590
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    const-string v3, "Realm"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v5, v6

    goto/16 :goto_0

    .line 594
    :cond_4
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    const-string v3, "Realm"

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v2, v3, v0, v6, v6}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;-><init>(Ljava/lang/String;[Ljava/lang/String;IZ)V

    aput-object v2, v5, v6

    goto/16 :goto_0

    .line 608
    :cond_5
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v2, "Name"

    iget-object v3, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v5, v7

    goto/16 :goto_1

    .line 614
    :catch_0
    move-exception v0

    .line 616
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "Handler does not support necessary callbacks"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 619
    :catch_1
    move-exception v0

    .line 621
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "IO exception in CallbackHandler."

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 633
    :cond_6
    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    goto/16 :goto_2

    .line 636
    :cond_7
    aget-object v0, v5, v6

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    goto/16 :goto_2

    .line 646
    :cond_8
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    aget-object v0, v5, v8

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    .line 654
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000001"

    iget-object v4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    iget-object v5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    const-string v6, "AUTHENTICATE"

    iget-object v7, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C

    move-result-object v0

    .line 663
    const-string v1, "username=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_authorizationId:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 667
    const-string v1, "\",realm=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_realm:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    :cond_9
    const-string v1, "\",cnonce=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    const-string v1, "\",nc="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    const-string v1, "00000001"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    const-string v1, ",qop="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    const-string v1, ",digest-uri=\""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    const-string v1, "\",response="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 680
    const-string v0, ",charset=utf-8,nonce=\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const-string v0, "\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v0, "javax.security.sasl.qop"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    const-string v1, "javax.security.sasl.strength"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    const-string v1, "javax.security.sasl.server.authentication"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    if-eqz v0, :cond_0

    const-string v2, "auth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v3

    .line 125
    :goto_0
    return-object v0

    .line 118
    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    if-nez p4, :cond_2

    move-object v0, v3

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    new-instance v0, Lcom/novell/sasl/client/DigestMD5SaslClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/novell/sasl/client/DigestMD5SaslClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    goto :goto_0
.end method

.method private static getHexChar(B)C
    .locals 1
    .parameter

    .prologue
    .line 734
    packed-switch p0, :pswitch_data_0

    .line 769
    const/16 v0, 0x5a

    :goto_0
    return v0

    .line 737
    :pswitch_0
    const/16 v0, 0x30

    goto :goto_0

    .line 739
    :pswitch_1
    const/16 v0, 0x31

    goto :goto_0

    .line 741
    :pswitch_2
    const/16 v0, 0x32

    goto :goto_0

    .line 743
    :pswitch_3
    const/16 v0, 0x33

    goto :goto_0

    .line 745
    :pswitch_4
    const/16 v0, 0x34

    goto :goto_0

    .line 747
    :pswitch_5
    const/16 v0, 0x35

    goto :goto_0

    .line 749
    :pswitch_6
    const/16 v0, 0x36

    goto :goto_0

    .line 751
    :pswitch_7
    const/16 v0, 0x37

    goto :goto_0

    .line 753
    :pswitch_8
    const/16 v0, 0x38

    goto :goto_0

    .line 755
    :pswitch_9
    const/16 v0, 0x39

    goto :goto_0

    .line 757
    :pswitch_a
    const/16 v0, 0x61

    goto :goto_0

    .line 759
    :pswitch_b
    const/16 v0, 0x62

    goto :goto_0

    .line 761
    :pswitch_c
    const/16 v0, 0x63

    goto :goto_0

    .line 763
    :pswitch_d
    const/16 v0, 0x64

    goto :goto_0

    .line 765
    :pswitch_e
    const/16 v0, 0x65

    goto :goto_0

    .line 767
    :pswitch_f
    const/16 v0, 0x66

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method DigestCalcHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 443
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 445
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 446
    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 447
    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 448
    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 449
    const-string v1, "UTF-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 450
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 452
    const-string v2, "md5-sess"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 455
    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 456
    const-string v1, "UTF-8"

    invoke-virtual {p5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 457
    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 458
    const-string v1, "UTF-8"

    invoke-virtual {p6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 459
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 472
    :goto_0
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v0

    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 464
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "No provider found for MD5 hash"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 466
    :catch_1
    move-exception v0

    .line 468
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "UTF-8 encoding not supported by platform."

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 511
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 512
    if-eqz p8, :cond_0

    .line 513
    const-string v1, "UTF-8"

    invoke-virtual {p6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 514
    :cond_0
    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 515
    const-string v1, "UTF-8"

    invoke-virtual {p7, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 516
    const-string v1, "auth-int"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    const-string v1, ":"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 519
    const-string v1, "00000000000000000000000000000000"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 521
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 522
    invoke-virtual {p0, v1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v1

    .line 525
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 526
    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 527
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 528
    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 529
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 531
    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 532
    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 533
    const-string v2, "UTF-8"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 534
    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 535
    const-string v2, "UTF-8"

    invoke-virtual {p5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 536
    const-string v2, ":"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 538
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 539
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 551
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/DigestMD5SaslClient;->convertToHex([B)[C

    move-result-object v0

    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 543
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "No provider found for MD5 hash"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 545
    :catch_1
    move-exception v0

    .line 547
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "UTF-8 encoding not supported by platform."

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method checkServerResponseAuth([B)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 704
    .line 707
    new-instance v9, Lcom/novell/sasl/client/ResponseAuth;

    invoke-direct {v9, p1}, Lcom/novell/sasl/client/ResponseAuth;-><init>([B)V

    .line 709
    iget-object v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_HA1:[C

    iget-object v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_dc:Lcom/novell/sasl/client/DigestChallenge;

    invoke-virtual {v0}, Lcom/novell/sasl/client/DigestChallenge;->getNonce()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000001"

    iget-object v4, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_clientNonce:Ljava/lang/String;

    iget-object v5, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_qopValue:Ljava/lang/String;

    const-string v6, "AUTHENTICATE"

    iget-object v7, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_digestURI:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/novell/sasl/client/DigestMD5SaslClient;->DigestCalcResponse([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[C

    move-result-object v0

    .line 718
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 720
    invoke-virtual {v9}, Lcom/novell/sasl/client/ResponseAuth;->getResponseValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method convertToHex([B)[C
    .locals 4
    .parameter

    .prologue
    .line 403
    .line 404
    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 406
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 409
    mul-int/lit8 v2, v1, 0x2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v3

    aput-char v3, v0, v2

    .line 411
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v3

    aput-char v3, v0, v2

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_0
    return-object v0
.end method

.method public dispose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 316
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    if-eq v0, v1, :cond_0

    .line 318
    iput v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    .line 320
    :cond_0
    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 348
    iget v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    packed-switch v1, :pswitch_data_0

    .line 382
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Unknown client state."

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :pswitch_0
    array-length v0, p1

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "response = byte[0]"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->createDigestResponse([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 358
    const/4 v1, 0x1

    iput v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "UTF-8 encoding not suppported by platform"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 367
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/novell/sasl/client/DigestMD5SaslClient;->checkServerResponseAuth([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    const/4 v1, 0x2

    iput v1, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    .line 372
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Could not validate response-auth value from server"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :pswitch_2
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Authentication sequence is complete"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_3
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "Client has been disposed"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getClientNonce()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    .line 782
    new-array v0, v5, [B

    .line 785
    const/16 v1, 0x40

    new-array v1, v1, [C

    .line 789
    :try_start_0
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 790
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 791
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 794
    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, v0, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v4

    aput-char v4, v1, v3

    .line 796
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/novell/sasl/client/DigestMD5SaslClient;->getHexChar(B)C

    move-result v4

    aput-char v4, v1, v3

    .line 791
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 799
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 801
    :catch_0
    move-exception v0

    .line 803
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "No random number generator available"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    const-string v0, "DIGEST-MD5"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 295
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getNegotiatedProperty: authentication exchange not complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    const-string v0, "javax.security.sasl.qop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "auth"

    .line 302
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitialResponse()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/novell/sasl/client/DigestMD5SaslClient;->m_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwrap: QOP has neither integrity nor privacy>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrap: QOP has neither integrity nor privacy>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
