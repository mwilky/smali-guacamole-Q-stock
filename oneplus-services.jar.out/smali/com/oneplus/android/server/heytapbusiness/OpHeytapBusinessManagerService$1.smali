.class Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;
.super Lcom/oneplus/android/heytapbusiness/IOpHeytapBusinessManager$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/heytapbusiness/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/heytapbusiness/you;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/heytapbusiness/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/you;

    invoke-direct {p0}, Lcom/oneplus/android/heytapbusiness/IOpHeytapBusinessManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addFastAppWechatPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V

    return-void
.end method

.method public addMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->zta(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    array-length p0, p3

    if-nez p0, :cond_0

    const-string p0, "dumpsys heytapbusiness"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_0
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_5

    :cond_0
    array-length p0, p3

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    const/4 p0, 0x0

    aget-object p0, p3, p0

    const-string p1, "-h"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Heytap business manager dump options:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [cmd] ..."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -h: print this help"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    s(or share): print settings of sharing"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    l(or login): print settings of login"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    wp(or wechat pay): print settings of wechat pay"

    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    const-string p1, "s"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "share"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_4

    :cond_2
    const-string p1, "l"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "login"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, "wp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "wechatpay"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown cmd: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; use -h for help"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    :goto_2
    const-string p0, "dumpsys heytapbusiness wechatpay"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    const-string p0, "dumpsys heytapbusiness login"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->dump(Ljava/io/PrintWriter;)V

    goto :goto_5

    :cond_7
    :goto_4
    const-string p0, "dumpsys heytapbusiness share"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->dump(Ljava/io/PrintWriter;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public removeFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->you(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public removeFastAppWechatPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->you(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V

    return-void
.end method

.method public removeMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->you(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;[Ljava/lang/String;)V

    return-void
.end method
