.class abstract Lorg/bouncycastle/crypto/dma/tsu$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/dma/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ssp"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/dma/sis;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/dma/tsu$ssp;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
