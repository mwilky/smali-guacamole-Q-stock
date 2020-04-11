.class public Lorg/bouncycastle/asn1/z;
.super Lorg/bouncycastle/asn1/qbh;
.source ""


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/z;

.field private static final Upa:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/z;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/z;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/z;->Upa:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/qbh;-><init>()V

    return-void
.end method


# virtual methods
.method isConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method ug()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lorg/bouncycastle/asn1/z;->Upa:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p0}, Lorg/bouncycastle/asn1/ugm;->zta(I[B)V

    return-void
.end method
