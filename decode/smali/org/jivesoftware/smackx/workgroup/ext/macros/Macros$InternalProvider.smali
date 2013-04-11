.class public Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;
.super Ljava/lang/Object;
.source "Macros.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;-><init>()V

    .line 106
    const/4 v1, 0x0

    .line 107
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 109
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacroGroups(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setRootGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "macros"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    :cond_2
    return-object v0
.end method

.method public parseMacro(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;-><init>()V

    .line 128
    const/4 v1, 0x0

    .line 129
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 131
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setType(I)V

    goto :goto_0

    .line 146
    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "macro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v1, 0x1

    goto :goto_0

    .line 152
    :cond_5
    return-object v0
.end method

.method public parseMacroGroup(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;-><init>()V

    .line 158
    const/4 v1, 0x0

    .line 159
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 161
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "macrogroup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacroGroup(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->addMacroGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V

    .line 165
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->setTitle(Ljava/lang/String;)V

    .line 168
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "macro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacro(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->addMacro(Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;)V

    goto :goto_0

    .line 172
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "macrogroup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    :cond_4
    return-object v0
.end method

.method public parseMacroGroups(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 185
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 186
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    move v5, v2

    move-object v2, v0

    move v0, v5

    .line 187
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 188
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 189
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 190
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "macrogroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacroGroup(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v2

    goto :goto_0

    .line 195
    :cond_1
    return-object v2
.end method
