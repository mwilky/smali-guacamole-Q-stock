.class Lorg/bouncycastle/x509/ExtCertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;
.source ""


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/x509/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/ExtCertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
