.class public Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;
.super Ljava/lang/Object;
.source "ReflectCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/reflect/ReflectCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reflect"
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;

.field private final mObject:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/oneplus/houston/common/client/reflect/ReflectCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public hasMethod(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
