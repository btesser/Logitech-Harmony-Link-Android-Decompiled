.class public Lorg/jivesoftware/smackx/provider/DelayInformationProvider;
.super Ljava/lang/Object;
.source "DelayInformationProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# static fields
.field private static final XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

.field private static final XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

.field private static formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

    .line 58
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

    .line 67
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    .line 75
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    const-string v1, "^\\d+T\\d+:\\d+:\\d+$"

    sget-object v2, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    const-string v1, "^\\d+-\\d+-\\d+T\\d+:\\d+:\\d+\\.\\d+Z$"

    sget-object v2, Lorg/jivesoftware/smack/packet/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    const-string v1, "^\\d+-\\d+-\\d+T\\d+:\\d+:\\d+Z$"

    sget-object v2, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0082_UTC_FORMAT_WITHOUT_MILLIS:Ljava/text/SimpleDateFormat;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;-><init>(Lorg/jivesoftware/smackx/provider/DelayInformationProvider;Ljava/util/Calendar;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 201
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0
.end method

.method private varargs filterDatesBefore(Ljava/util/Calendar;[Ljava/util/Calendar;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "[",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 181
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    return-object v0
.end method

.method private handleDateWithMissingLeadingZeros(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter

    .prologue
    .line 150
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 154
    sget-object v1, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    invoke-direct {p0, p1, v1}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v1

    .line 155
    sget-object v2, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->XEP_0091_UTC_FALLBACK_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p1, v2}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object v2

    .line 157
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/Calendar;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {p0, v0, v3}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->filterDatesBefore(Ljava/util/Calendar;[Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseXEP91Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 169
    invoke-virtual {p2}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    monitor-exit p2

    .line 173
    :goto_0
    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    const-string v0, ""

    const-string v1, "stamp"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    sget-object v0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->formats:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 98
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :goto_0
    sget-object v3, Lorg/jivesoftware/smackx/packet/DelayInformation;->XEP_0091_UTC_FORMAT:Ljava/text/DateFormat;

    if-ne v0, v3, :cond_3

    const-string v0, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_3

    .line 115
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->handleDateWithMissingLeadingZeros(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 123
    :goto_1
    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 127
    :cond_1
    new-instance v1, Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;-><init>(Ljava/util/Date;)V

    .line 128
    const-string v0, ""

    const-string v2, "from"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setFrom(Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v4

    .line 137
    :cond_2
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setReason(Ljava/lang/String;)V

    .line 139
    return-object v1

    .line 98
    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0

    .line 100
    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v4

    move-object v2, v4

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v2, v4

    goto :goto_0

    .line 98
    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v4

    move-object v2, v4

    goto :goto_0
.end method
