.class Lcom/google/tagmanager/DebugValueBuilder;
.super Ljava/lang/Object;
.source "DebugValueBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ValueBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DebugValueBuilder$TypeMismatchException;
    }
.end annotation


# instance fields
.field private value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method public constructor <init>(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method public static copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 3

    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to copy runtime value into debug value"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private validateType(IILjava/lang/String;)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder$TypeMismatchException;

    invoke-direct {v0, p3, p2}, Lcom/google/tagmanager/DebugValueBuilder$TypeMismatchException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .locals 3

    iget-object v0, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget v0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x4

    const-string v2, "set macro evaluation extension"

    invoke-direct {p0, v1, v0, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(IILjava/lang/String;)V

    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v2, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->macro:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->setExtension(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;)V

    return-object v1
.end method

.method public getListItem(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    iget-object v0, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget v0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x2

    const-string v2, "add new list item"

    invoke-direct {p0, v1, v0, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(IILjava/lang/String;)V

    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v1, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-object v0
.end method

.method public getMapKey(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    iget-object v0, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget v0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x3

    const-string v2, "add new map key"

    invoke-direct {p0, v1, v0, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(IILjava/lang/String;)V

    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v1, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-object v0
.end method

.method public getMapValue(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    iget-object v0, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget v0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x3

    const-string v2, "add new map value"

    invoke-direct {p0, v1, v0, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(IILjava/lang/String;)V

    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v1, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-object v0
.end method

.method public getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    iget-object v0, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget v0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x7

    const-string v2, "add template token"

    invoke-direct {p0, v1, v0, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(IILjava/lang/String;)V

    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v1, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-object v0
.end method
