.class public final Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LogProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/LogProto$SettingsLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/LogProto$SettingsLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog;",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/LogProto$SettingsLogOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$000()Lcom/android/settings/intelligence/LogProto$SettingsLog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/intelligence/LogProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$400(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-object p0
.end method

.method public clearAttribution()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$200(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-object p0
.end method

.method public clearChangedPreferenceIntValue()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$1100(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-object p0
.end method

.method public clearChangedPreferenceKey()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$800(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-object p0
.end method

.method public clearPageId()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$600(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-object p0
.end method

.method public clearTimestamp()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$1300(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V

    return-object p0
.end method

.method public getAction()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getAction()I

    move-result v0

    return v0
.end method

.method public getAttribution()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getAttribution()I

    move-result v0

    return v0
.end method

.method public getChangedPreferenceIntValue()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getChangedPreferenceIntValue()I

    move-result v0

    return v0
.end method

.method public getChangedPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getChangedPreferenceKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangedPreferenceKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getChangedPreferenceKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getPageId()I

    move-result v0

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getTimestampBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasAttribution()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasAttribution()Z

    move-result v0

    return v0
.end method

.method public hasChangedPreferenceIntValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasChangedPreferenceIntValue()Z

    move-result v0

    return v0
.end method

.method public hasChangedPreferenceKey()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasChangedPreferenceKey()Z

    move-result v0

    return v0
.end method

.method public hasPageId()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasPageId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public setAction(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$300(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setAttribution(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$100(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setChangedPreferenceIntValue(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$1000(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setChangedPreferenceKey(Ljava/lang/String;)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$700(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChangedPreferenceKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$900(Lcom/android/settings/intelligence/LogProto$SettingsLog;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPageId(I)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$500(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$1200(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimestampBytes(Lcom/google/protobuf/ByteString;)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->access$1400(Lcom/android/settings/intelligence/LogProto$SettingsLog;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
