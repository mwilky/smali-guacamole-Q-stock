.class public Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;
.super Lorg/bouncycastle/jcajce/provider/util/zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bio"
.end annotation


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric"

.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/you/tsu/ssp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/zta;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lorg/bouncycastle/jcajce/provider/config/zta;)V
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$ECB"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cipher.DESEDE"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$Wrap"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cipher.DESEDEWRAP"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Alg.Alias.Cipher."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->id_alg_CMS3DESwrap:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DESEDEWRAP"

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DESEDE"

    const-string v1, "Alg.Alias.Cipher.TDEA"

    invoke-interface {p1, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Cipher.TDEAWRAP"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyGenerator.TDEA"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.TDEA"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.TDEA"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MessageDigest"

    const-string v1, "SHA-1"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->you(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    const-string v2, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$PBEWithSHAAndDES3Key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Cipher.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$PBEWithSHAAndDES2Key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Cipher.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/bvj;

    const-string v3, "Alg.Alias.Cipher"

    invoke-interface {p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {p1, v3, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHAAND3-KEYDESEDE-CBC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHAAND2-KEYDESEDE-CBC"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYDESEDE-CBC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYDESEDE-CBC"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE-CBC"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$KeyGenerator"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KeyGenerator.DESEDE"

    invoke-interface {p1, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$KeyFactory"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SecretKeyFactory.DESEDE"

    invoke-interface {p1, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.DESEDE"

    const-string v3, "org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters"

    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->des_EDE3_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$PBEWithSHAAndDES3KeyFactory"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecretKeyFactory.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/ssp$bio;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$PBEWithSHAAndDES2KeyFactory"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecretKeyFactory.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDESEDE"

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "PKCS12PBE"

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES3KEY-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES2KEY-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBE"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.4"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWithSHAAnd3KeyTripleDES"

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.4"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.PBEWithSHAAnd3KeyTripleDES"

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
