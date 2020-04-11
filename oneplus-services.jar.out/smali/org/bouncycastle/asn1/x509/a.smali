.class public Lorg/bouncycastle/asn1/x509/a;
.super Lorg/bouncycastle/asn1/n;
.source ""


# static fields
.field public static final AA_COMPROMISE:I = 0x8000

.field public static final AFFILIATION_CHANGED:I = 0x10

.field public static final CA_COMPROMISE:I = 0x20

.field public static final CERTIFICATE_HOLD:I = 0x2

.field public static final CESSATION_OF_OPERATION:I = 0x4

.field public static final Hoa:I = 0x80

.field public static final Ioa:I = 0x40

.field public static final Joa:I = 0x20

.field public static final KEY_COMPROMISE:I = 0x40

.field public static final Koa:I = 0x10

.field public static final Loa:I = 0x8

.field public static final Moa:I = 0x4

.field public static final Noa:I = 0x2

.field public static final Ooa:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x1

.field public static final Poa:I = 0x8000

.field public static final SUPERSEDED:I = 0x8

.field public static final UNUSED:I = 0x80


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/sis;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/sis;->X(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/n;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->ug()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([BI)V

    return-void
.end method
