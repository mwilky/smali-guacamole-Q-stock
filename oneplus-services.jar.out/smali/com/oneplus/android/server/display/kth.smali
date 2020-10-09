.class Lcom/oneplus/android/server/display/kth;
.super Landroid/os/ShellCommand;
.source ""


# static fields
.field private static final DEBUG:Z = true

.field private static final HDR_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpColorDisplayShellCommand"

.field private static final db:I = 0x0

.field private static final eb:I = 0x1

.field private static final fb:I = 0x3


# instance fields
.field mService:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/display/kth;->mService:Lcom/oneplus/android/server/display/OpColorDisplayService;

    return-void
.end method

.method private notifyBlackListLayer(Z)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/kth;->mService:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyBlackListLayer(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private notifySFColorModeChange(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySFColorModeChange colorMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "hdr_mode"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/android/server/display/kth;->mService:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-virtual {v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/android/server/display/kth;->mService:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-virtual {v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/kth;->mService:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifySFColorModeChange(I)V

    return v0
.end method

.method private notifyVideoModeChange(Z)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/kth;->mService:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyVideoModeChange(Z)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "stop-video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "native-mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "p3-color-mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_3
    const-string v1, "srgb-color-mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_4
    const-string v1, "forbid_video_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "play-video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "hdr-color-mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_7
    const-string v1, "allow_video_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/display/kth;->notifyBlackListLayer(Z)I

    move-result p0

    return p0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/kth;->notifyBlackListLayer(Z)I

    move-result p0

    return p0

    :pswitch_2
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/display/kth;->notifyVideoModeChange(Z)I

    move-result p0

    return p0

    :pswitch_3
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/kth;->notifyVideoModeChange(Z)I

    move-result p0

    return p0

    :pswitch_4
    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/kth;->notifySFColorModeChange(I)I

    move-result p0

    return p0

    :pswitch_5
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/display/kth;->notifySFColorModeChange(I)I

    move-result p0

    return p0

    :pswitch_6
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/kth;->notifySFColorModeChange(I)I

    move-result p0

    return p0

    :pswitch_7
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/display/kth;->notifySFColorModeChange(I)I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x76c89263 -> :sswitch_7
        -0x2f4d2afc -> :sswitch_6
        0x1d9e7ca2 -> :sswitch_5
        0x22193472 -> :sswitch_4
        0x515c2e00 -> :sswitch_3
        0x58058817 -> :sswitch_2
        0x659c8199 -> :sswitch_1
        0x6ed6a6f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Color Display commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  srgb-color-mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    current color mode is sRGB"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  p3-color-mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    current color mode is dci-p3"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  hdr-color-mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    current color mode is hdr"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
