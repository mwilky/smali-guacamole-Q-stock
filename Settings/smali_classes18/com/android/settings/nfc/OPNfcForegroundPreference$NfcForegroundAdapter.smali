.class Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPNfcForegroundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/OPNfcForegroundPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcForegroundAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/OPNfcForegroundPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$100(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d01c5

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;)V

    const v3, 0x7f0a0433

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->root:Landroid/view/View;

    const v3, 0x7f0a0289

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;

    :goto_0
    iget-object v3, v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v3}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-ne p1, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    iget-object v1, v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    :cond_3
    iget-object v5, v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_2
    iget-object v1, v2, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v5, Lcom/android/settings/nfc/-$$Lambda$OPNfcForegroundPreference$NfcForegroundAdapter$qNvWbnsR7zJv3EuWuzylUkURco4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/nfc/-$$Lambda$OPNfcForegroundPreference$NfcForegroundAdapter$qNvWbnsR7zJv3EuWuzylUkURco4;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public synthetic lambda$getView$0$OPNfcForegroundPreference$NfcForegroundAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->setForegroundMode(Ljava/lang/String;)V

    return-void
.end method

.method setForegroundMode(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$300(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$400(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$500(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForegroundMode newValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " foregroundMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPNfcForegroundPreference"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {v2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
