.class Lorg/bouncycastle/jce/provider/rtg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EDa:I = 0xb

.field public static final FDa:I = 0xc


# instance fields
.field CDa:I

.field DDa:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lorg/bouncycastle/jce/provider/rtg;->CDa:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/rtg;->DDa:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public Dj()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jce/provider/rtg;->CDa:I

    return p0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/rtg;->DDa:Ljava/util/Date;

    return-object p0
.end method

.method public ka(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jce/provider/rtg;->CDa:I

    return-void
.end method

.method public you(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/rtg;->DDa:Ljava/util/Date;

    return-void
.end method
