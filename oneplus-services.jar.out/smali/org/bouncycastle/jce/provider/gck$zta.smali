.class Lorg/bouncycastle/jce/provider/gck$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/gck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# static fields
.field private static final gGa:Lorg/bouncycastle/jce/provider/sis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/jce/provider/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/sis;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/gck$zta;->gGa:Lorg/bouncycastle/jce/provider/sis;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/bouncycastle/jce/provider/sis;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/gck$zta;->gGa:Lorg/bouncycastle/jce/provider/sis;

    return-object v0
.end method
