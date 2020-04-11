.class public Lorg/bouncycastle/jcajce/you/tsu/dma$zta;
.super Lorg/bouncycastle/jcajce/provider/util/zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/dma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/you/tsu/dma;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/zta;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lorg/bouncycastle/jcajce/provider/config/zta;)V
    .locals 6

    const-string p0, "PBEWITHMD5ANDRC2"

    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PBEWITHSHA1ANDRC2"

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithMD5AndRC2_CBC:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "Alg.Alias.SecretKeyFactory"

    invoke-interface {p1, v2, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHA1AndRC2_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {p1, v2, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    const-string v1, "PBEWITHSHAAND128BITRC2-CBC"

    const-string v2, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PBEWITHSHAAND40BITRC2-CBC"

    const-string v3, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    invoke-interface {p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$PBEWithMD5KeyFactory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    invoke-interface {p1, v4, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$PBEWithSHA1KeyFactory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v4, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$PBEWithSHAAnd128BitKeyFactory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v4, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$PBEWithSHAAnd40BitKeyFactory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v4, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithMD5AndRC2_CBC:Lorg/bouncycastle/asn1/bvj;

    const-string v4, "Alg.Alias.Cipher"

    invoke-interface {p1, v4, v3, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHA1AndRC2_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {p1, v4, v3, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    const-string v3, "PKCS12PBE"

    const-string v5, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    invoke-interface {p1, v5, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    invoke-interface {p1, v5, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    invoke-interface {p1, v5, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {p1, v4, v5, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {p1, v4, v5, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    const-string v4, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    invoke-interface {p1, v4, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$PBEWithSHA1AndRC2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cipher.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd128BitRC2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd40BitRC2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/you/tsu/dma$zta;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithMD5AndRC2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cipher.PBEWITHMD5ANDRC2"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
