.class public interface abstract Lorg/bouncycastle/jcajce/provider/config/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACCEPTABLE_EC_CURVES:Ljava/lang/String; = "acceptableEcCurves"

.field public static final ADDITIONAL_EC_PARAMETERS:Ljava/lang/String; = "additionalEcParameters"

.field public static final DH_DEFAULT_PARAMS:Ljava/lang/String; = "DhDefaultParams"

.field public static final EC_IMPLICITLY_CA:Ljava/lang/String; = "ecImplicitlyCa"

.field public static final THREAD_LOCAL_DH_DEFAULT_PARAMS:Ljava/lang/String; = "threadLocalDhDefaultParams"

.field public static final THREAD_LOCAL_EC_IMPLICITLY_CA:Ljava/lang/String; = "threadLocalEcImplicitlyCa"


# virtual methods
.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract you(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract zta(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zta(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V
.end method

.method public abstract zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/jcajce/provider/util/sis;)V
.end method
