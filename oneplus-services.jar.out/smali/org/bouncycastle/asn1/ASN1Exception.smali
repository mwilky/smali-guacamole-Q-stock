.class public Lorg/bouncycastle/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1Exception;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
