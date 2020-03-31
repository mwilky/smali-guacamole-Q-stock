.class public final Lcom/oneplus/support/core/view/PointerIconCompat;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/core/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-void
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Lcom/oneplus/support/core/view/PointerIconCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/oneplus/support/core/view/PointerIconCompat;

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/oneplus/support/core/view/PointerIconCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-object p0
.end method
