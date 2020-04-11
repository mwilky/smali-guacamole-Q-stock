.class Lcom/android/settings/RadioInfo$28;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    if-ltz p3, :cond_4

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$4100()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_4

    move v0, p3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-gt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    if-ge v4, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1, v0}, Lcom/android/settings/RadioInfo;->access$4202(Lcom/android/settings/RadioInfo;I)I

    iget-object v1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v1, v0, v4}, Lcom/android/settings/RadioInfo;->access$4300(Lcom/android/settings/RadioInfo;II)V

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
