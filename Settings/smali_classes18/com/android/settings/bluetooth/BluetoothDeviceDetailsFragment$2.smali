.class Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;
.super Ljava/lang/Object;
.source "BluetoothDeviceDetailsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTDeviceDetailsFrg"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "function_click_left_key_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f120678

    const-string v4, "setKeyFunction e = "

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v6, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$202(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v7}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v9, v9, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setKeyFunction(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$700(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    :cond_0
    goto/16 :goto_3

    :cond_1
    const-string v1, "function_click_right_key_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v6, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$402(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I

    :try_start_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v7}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    iget-object v9, v9, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setKeyFunction(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$700(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    :cond_2
    goto/16 :goto_3

    :cond_3
    const-string v1, "ota_device_support_enable_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "onepluspods_ota_data_download"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v6, "onepluspods_auto_ota_version"

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    const-string v1, "ota_device_wifi_data_enable_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_7
    :goto_2
    nop

    :goto_3
    return v5
.end method
