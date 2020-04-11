.class public Lcom/oneplus/android/server/display/OpColorModeManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OP_DISPLAY_HALSRGB_COLOR_MODE:I = 0x12

.field private static final OP_DISPLAY_P3_COLOR_MODE:I = 0x10

.field private static final OP_DISPLAY_WIDE_COLOR_MODE:I = 0x11

.field private static final OP_NATIVE_CUSTOMER_P3_MODE:I = 0x15

.field private static final OP_NATIVE_CUSTOMER_SRGB_MODE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "OpColorModeManager"

.field private static final lba:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeCreate()V

    return-void
.end method

.method private Lr()V
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0x10

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x11

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x12

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x14

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x15

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    return-void
.end method

.method private static native nativeCreate()V
.end method

.method private static native nativeSetActiveModesId(I)V
.end method

.method private static native nativeSetPanelMode(IZ)V
.end method


# virtual methods
.method public G(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "reading_mode_status"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public H(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public I(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "accessibility_display_grayscale_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public K(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "night_display_activated"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public L(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "reading_mode_status"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public M(I)V
    .locals 0

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetActiveModesId(I)V

    return-void
.end method

.method public ibl(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->Lr()V

    :goto_0
    invoke-static {p1, p2}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
