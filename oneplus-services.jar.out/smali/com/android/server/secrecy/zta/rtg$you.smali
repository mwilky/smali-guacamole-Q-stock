.class Lcom/android/server/secrecy/zta/rtg$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/zta/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field static final qN:Ljava/lang/String; = "support"

.field static final rN:Ljava/lang/String; = "log_sw"

.field static final sN:Ljava/lang/String; = "adb_sw"

.field static final tN:Ljava/lang/String; = "mac_timeout"

.field static final uN:Ljava/lang/String; = "id_timeout"

.field static final yD:Ljava/lang/String; = "activity_sw"


# instance fields
.field private final TAG_ACTIVITY:Ljava/lang/Object;

.field private final jD:Lcom/android/server/secrecy/zta/rtg$zta;

.field private lN:Z

.field private mN:Z

.field private nN:Z

.field private oD:Z

.field private oN:J

.field private pN:J

.field final synthetic this$0:Lcom/android/server/secrecy/zta/rtg;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/zta/rtg;Lcom/android/server/secrecy/zta/rtg$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/zta/rtg$you;->this$0:Lcom/android/server/secrecy/zta/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "activity"

    iput-object p1, p0, Lcom/android/server/secrecy/zta/rtg$you;->TAG_ACTIVITY:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/secrecy/zta/rtg$you;->jD:Lcom/android/server/secrecy/zta/rtg$zta;

    return-void
.end method


# virtual methods
.method public Jd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/rtg$you;->oD:Z

    return p0
.end method

.method public K(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Got execption parsing permissions."

    const-string v1, "Got execption close permReader."

    const-string v2, "SecrecyService.SecrecySwitchHelper"

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/secrecy/zta/rtg$you;->this$0:Lcom/android/server/secrecy/zta/rtg;

    invoke-static {v6}, Lcom/android/server/secrecy/zta/rtg;->zta(Lcom/android/server/secrecy/zta/rtg;)Lcom/android/server/secrecy/you/zta;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/secrecy/you/zta;->Sd()V

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    if-eqz v5, :cond_8

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "support"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "true"

    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/secrecy/zta/rtg$you;->lN:Z

    :goto_1
    move v3, v6

    goto/16 :goto_2

    :cond_2
    const-string v7, "activity_sw"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/secrecy/zta/rtg$you;->oD:Z

    goto :goto_1

    :cond_3
    const-string v7, "log_sw"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/secrecy/zta/rtg$you;->mN:Z

    goto :goto_1

    :cond_4
    const-string v7, "adb_sw"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/secrecy/zta/rtg$you;->nN:Z

    goto :goto_1

    :cond_5
    const-string v7, "mac_timeout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/secrecy/zta/rtg$you;->oN:J

    goto :goto_1

    :cond_6
    const-string v7, "id_timeout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/secrecy/zta/rtg$you;->pN:J

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/server/secrecy/zta/rtg$you;->TAG_ACTIVITY:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/secrecy/zta/rtg$you;->this$0:Lcom/android/server/secrecy/zta/rtg;

    invoke-static {v5}, Lcom/android/server/secrecy/zta/rtg;->zta(Lcom/android/server/secrecy/zta/rtg;)Lcom/android/server/secrecy/you/zta;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/secrecy/you/zta;->zta(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_8
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_6
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_3
    if-eqz v3, :cond_a

    iget-object p0, p0, Lcom/android/server/secrecy/zta/rtg$you;->jD:Lcom/android/server/secrecy/zta/rtg$zta;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/server/secrecy/zta/rtg$zta;->g()V

    :cond_a
    return-void

    :goto_4
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method public Kd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/rtg$you;->nN:Z

    return p0
.end method

.method public Ld()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/rtg$you;->pN:J

    return-wide v0
.end method

.method public Md()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/rtg$you;->mN:Z

    return p0
.end method

.method public Nd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/rtg$you;->oN:J

    return-wide v0
.end method

.method public Od()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/rtg$you;->lN:Z

    return p0
.end method

.method public dumpToString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nSecrecy Switch Info:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/zta/rtg$you;->lN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/secrecy/zta/rtg$you;->oD:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/secrecy/zta/rtg$you;->mN:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adb : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/secrecy/zta/rtg$you;->nN:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac_timeout : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/secrecy/zta/rtg$you;->oN:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id_timeout : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/secrecy/zta/rtg$you;->pN:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
