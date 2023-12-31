﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebNuocHoa.Models
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="QLNH")]
	public partial class dbQLNHDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertAdmin(Admin instance);
    partial void UpdateAdmin(Admin instance);
    partial void DeleteAdmin(Admin instance);
    partial void InsertSanPham(SanPham instance);
    partial void UpdateSanPham(SanPham instance);
    partial void DeleteSanPham(SanPham instance);
    partial void InsertChiTietDatHang(ChiTietDatHang instance);
    partial void UpdateChiTietDatHang(ChiTietDatHang instance);
    partial void DeleteChiTietDatHang(ChiTietDatHang instance);
    partial void InsertDonDatHang(DonDatHang instance);
    partial void UpdateDonDatHang(DonDatHang instance);
    partial void DeleteDonDatHang(DonDatHang instance);
    partial void InsertKhachHang(KhachHang instance);
    partial void UpdateKhachHang(KhachHang instance);
    partial void DeleteKhachHang(KhachHang instance);
    partial void InsertLoaiSPham(LoaiSPham instance);
    partial void UpdateLoaiSPham(LoaiSPham instance);
    partial void DeleteLoaiSPham(LoaiSPham instance);
    #endregion
		
		public dbQLNHDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["QLNHConnectionString1"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public dbQLNHDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbQLNHDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbQLNHDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbQLNHDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Admin> Admins
		{
			get
			{
				return this.GetTable<Admin>();
			}
		}
		
		public System.Data.Linq.Table<SanPham> SanPhams
		{
			get
			{
				return this.GetTable<SanPham>();
			}
		}
		
		public System.Data.Linq.Table<ChiTietDatHang> ChiTietDatHangs
		{
			get
			{
				return this.GetTable<ChiTietDatHang>();
			}
		}
		
		public System.Data.Linq.Table<DonDatHang> DonDatHangs
		{
			get
			{
				return this.GetTable<DonDatHang>();
			}
		}
		
		public System.Data.Linq.Table<KhachHang> KhachHangs
		{
			get
			{
				return this.GetTable<KhachHang>();
			}
		}
		
		public System.Data.Linq.Table<LoaiSPham> LoaiSPhams
		{
			get
			{
				return this.GetTable<LoaiSPham>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Admin")]
	public partial class Admin : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _UserAdmin;
		
		private string _PassAdmin;
		
		private string _Hoten;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnUserAdminChanging(string value);
    partial void OnUserAdminChanged();
    partial void OnPassAdminChanging(string value);
    partial void OnPassAdminChanged();
    partial void OnHotenChanging(string value);
    partial void OnHotenChanged();
    #endregion
		
		public Admin()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserAdmin", DbType="VarChar(30) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string UserAdmin
		{
			get
			{
				return this._UserAdmin;
			}
			set
			{
				if ((this._UserAdmin != value))
				{
					this.OnUserAdminChanging(value);
					this.SendPropertyChanging();
					this._UserAdmin = value;
					this.SendPropertyChanged("UserAdmin");
					this.OnUserAdminChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PassAdmin", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string PassAdmin
		{
			get
			{
				return this._PassAdmin;
			}
			set
			{
				if ((this._PassAdmin != value))
				{
					this.OnPassAdminChanging(value);
					this.SendPropertyChanging();
					this._PassAdmin = value;
					this.SendPropertyChanged("PassAdmin");
					this.OnPassAdminChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Hoten", DbType="NVarChar(50)")]
		public string Hoten
		{
			get
			{
				return this._Hoten;
			}
			set
			{
				if ((this._Hoten != value))
				{
					this.OnHotenChanging(value);
					this.SendPropertyChanging();
					this._Hoten = value;
					this.SendPropertyChanged("Hoten");
					this.OnHotenChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.SanPham")]
	public partial class SanPham : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MaSP;
		
		private string _TenSP;
		
		private System.Nullable<decimal> _GiaBan;
		
		private string _MoTa;
		
		private string _AnhBia;
		
		private string _MuiHuong;
		
		private string _DanhGia;
		
		private System.Nullable<System.DateTime> _NgayCapNhat;
		
		private System.Nullable<int> _SoLuongTon;
		
		private System.Nullable<int> _MaLoai;
		
		private EntitySet<ChiTietDatHang> _ChiTietDatHangs;
		
		private EntityRef<LoaiSPham> _LoaiSPham;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMaSPChanging(int value);
    partial void OnMaSPChanged();
    partial void OnTenSPChanging(string value);
    partial void OnTenSPChanged();
    partial void OnGiaBanChanging(System.Nullable<decimal> value);
    partial void OnGiaBanChanged();
    partial void OnMoTaChanging(string value);
    partial void OnMoTaChanged();
    partial void OnAnhBiaChanging(string value);
    partial void OnAnhBiaChanged();
    partial void OnMuiHuongChanging(string value);
    partial void OnMuiHuongChanged();
    partial void OnDanhGiaChanging(string value);
    partial void OnDanhGiaChanged();
    partial void OnNgayCapNhatChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayCapNhatChanged();
    partial void OnSoLuongTonChanging(System.Nullable<int> value);
    partial void OnSoLuongTonChanged();
    partial void OnMaLoaiChanging(System.Nullable<int> value);
    partial void OnMaLoaiChanged();
    #endregion
		
		public SanPham()
		{
			this._ChiTietDatHangs = new EntitySet<ChiTietDatHang>(new Action<ChiTietDatHang>(this.attach_ChiTietDatHangs), new Action<ChiTietDatHang>(this.detach_ChiTietDatHangs));
			this._LoaiSPham = default(EntityRef<LoaiSPham>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaSP", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MaSP
		{
			get
			{
				return this._MaSP;
			}
			set
			{
				if ((this._MaSP != value))
				{
					this.OnMaSPChanging(value);
					this.SendPropertyChanging();
					this._MaSP = value;
					this.SendPropertyChanged("MaSP");
					this.OnMaSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenSP", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
		public string TenSP
		{
			get
			{
				return this._TenSP;
			}
			set
			{
				if ((this._TenSP != value))
				{
					this.OnTenSPChanging(value);
					this.SendPropertyChanging();
					this._TenSP = value;
					this.SendPropertyChanged("TenSP");
					this.OnTenSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GiaBan", DbType="Decimal(38,0)")]
		public System.Nullable<decimal> GiaBan
		{
			get
			{
				return this._GiaBan;
			}
			set
			{
				if ((this._GiaBan != value))
				{
					this.OnGiaBanChanging(value);
					this.SendPropertyChanging();
					this._GiaBan = value;
					this.SendPropertyChanged("GiaBan");
					this.OnGiaBanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MoTa", DbType="NVarChar(MAX)")]
		public string MoTa
		{
			get
			{
				return this._MoTa;
			}
			set
			{
				if ((this._MoTa != value))
				{
					this.OnMoTaChanging(value);
					this.SendPropertyChanging();
					this._MoTa = value;
					this.SendPropertyChanged("MoTa");
					this.OnMoTaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AnhBia", DbType="VarChar(50)")]
		public string AnhBia
		{
			get
			{
				return this._AnhBia;
			}
			set
			{
				if ((this._AnhBia != value))
				{
					this.OnAnhBiaChanging(value);
					this.SendPropertyChanging();
					this._AnhBia = value;
					this.SendPropertyChanged("AnhBia");
					this.OnAnhBiaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MuiHuong", DbType="NVarChar(MAX)")]
		public string MuiHuong
		{
			get
			{
				return this._MuiHuong;
			}
			set
			{
				if ((this._MuiHuong != value))
				{
					this.OnMuiHuongChanging(value);
					this.SendPropertyChanging();
					this._MuiHuong = value;
					this.SendPropertyChanged("MuiHuong");
					this.OnMuiHuongChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DanhGia", DbType="NVarChar(MAX)")]
		public string DanhGia
		{
			get
			{
				return this._DanhGia;
			}
			set
			{
				if ((this._DanhGia != value))
				{
					this.OnDanhGiaChanging(value);
					this.SendPropertyChanging();
					this._DanhGia = value;
					this.SendPropertyChanged("DanhGia");
					this.OnDanhGiaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayCapNhat", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayCapNhat
		{
			get
			{
				return this._NgayCapNhat;
			}
			set
			{
				if ((this._NgayCapNhat != value))
				{
					this.OnNgayCapNhatChanging(value);
					this.SendPropertyChanging();
					this._NgayCapNhat = value;
					this.SendPropertyChanged("NgayCapNhat");
					this.OnNgayCapNhatChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoLuongTon", DbType="Int")]
		public System.Nullable<int> SoLuongTon
		{
			get
			{
				return this._SoLuongTon;
			}
			set
			{
				if ((this._SoLuongTon != value))
				{
					this.OnSoLuongTonChanging(value);
					this.SendPropertyChanging();
					this._SoLuongTon = value;
					this.SendPropertyChanged("SoLuongTon");
					this.OnSoLuongTonChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaLoai", DbType="Int")]
		public System.Nullable<int> MaLoai
		{
			get
			{
				return this._MaLoai;
			}
			set
			{
				if ((this._MaLoai != value))
				{
					if (this._LoaiSPham.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMaLoaiChanging(value);
					this.SendPropertyChanging();
					this._MaLoai = value;
					this.SendPropertyChanged("MaLoai");
					this.OnMaLoaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="SanPham_ChiTietDatHang", Storage="_ChiTietDatHangs", ThisKey="MaSP", OtherKey="MaSP")]
		public EntitySet<ChiTietDatHang> ChiTietDatHangs
		{
			get
			{
				return this._ChiTietDatHangs;
			}
			set
			{
				this._ChiTietDatHangs.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="LoaiSPham_SanPham", Storage="_LoaiSPham", ThisKey="MaLoai", OtherKey="MaLoai", IsForeignKey=true)]
		public LoaiSPham LoaiSPham
		{
			get
			{
				return this._LoaiSPham.Entity;
			}
			set
			{
				LoaiSPham previousValue = this._LoaiSPham.Entity;
				if (((previousValue != value) 
							|| (this._LoaiSPham.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._LoaiSPham.Entity = null;
						previousValue.SanPhams.Remove(this);
					}
					this._LoaiSPham.Entity = value;
					if ((value != null))
					{
						value.SanPhams.Add(this);
						this._MaLoai = value.MaLoai;
					}
					else
					{
						this._MaLoai = default(Nullable<int>);
					}
					this.SendPropertyChanged("LoaiSPham");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_ChiTietDatHangs(ChiTietDatHang entity)
		{
			this.SendPropertyChanging();
			entity.SanPham = this;
		}
		
		private void detach_ChiTietDatHangs(ChiTietDatHang entity)
		{
			this.SendPropertyChanging();
			entity.SanPham = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.ChiTietDatHang")]
	public partial class ChiTietDatHang : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _SoDH;
		
		private int _MaSP;
		
		private System.Nullable<int> _SoLuong;
		
		private System.Nullable<decimal> _DonGia;
		
		private EntityRef<SanPham> _SanPham;
		
		private EntityRef<DonDatHang> _DonDatHang;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnSoDHChanging(int value);
    partial void OnSoDHChanged();
    partial void OnMaSPChanging(int value);
    partial void OnMaSPChanged();
    partial void OnSoLuongChanging(System.Nullable<int> value);
    partial void OnSoLuongChanged();
    partial void OnDonGiaChanging(System.Nullable<decimal> value);
    partial void OnDonGiaChanged();
    #endregion
		
		public ChiTietDatHang()
		{
			this._SanPham = default(EntityRef<SanPham>);
			this._DonDatHang = default(EntityRef<DonDatHang>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoDH", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int SoDH
		{
			get
			{
				return this._SoDH;
			}
			set
			{
				if ((this._SoDH != value))
				{
					if (this._DonDatHang.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnSoDHChanging(value);
					this.SendPropertyChanging();
					this._SoDH = value;
					this.SendPropertyChanged("SoDH");
					this.OnSoDHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaSP", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int MaSP
		{
			get
			{
				return this._MaSP;
			}
			set
			{
				if ((this._MaSP != value))
				{
					if (this._SanPham.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMaSPChanging(value);
					this.SendPropertyChanging();
					this._MaSP = value;
					this.SendPropertyChanged("MaSP");
					this.OnMaSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoLuong", DbType="Int")]
		public System.Nullable<int> SoLuong
		{
			get
			{
				return this._SoLuong;
			}
			set
			{
				if ((this._SoLuong != value))
				{
					this.OnSoLuongChanging(value);
					this.SendPropertyChanging();
					this._SoLuong = value;
					this.SendPropertyChanged("SoLuong");
					this.OnSoLuongChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DonGia", DbType="Decimal(18,0)")]
		public System.Nullable<decimal> DonGia
		{
			get
			{
				return this._DonGia;
			}
			set
			{
				if ((this._DonGia != value))
				{
					this.OnDonGiaChanging(value);
					this.SendPropertyChanging();
					this._DonGia = value;
					this.SendPropertyChanged("DonGia");
					this.OnDonGiaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="SanPham_ChiTietDatHang", Storage="_SanPham", ThisKey="MaSP", OtherKey="MaSP", IsForeignKey=true)]
		public SanPham SanPham
		{
			get
			{
				return this._SanPham.Entity;
			}
			set
			{
				SanPham previousValue = this._SanPham.Entity;
				if (((previousValue != value) 
							|| (this._SanPham.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._SanPham.Entity = null;
						previousValue.ChiTietDatHangs.Remove(this);
					}
					this._SanPham.Entity = value;
					if ((value != null))
					{
						value.ChiTietDatHangs.Add(this);
						this._MaSP = value.MaSP;
					}
					else
					{
						this._MaSP = default(int);
					}
					this.SendPropertyChanged("SanPham");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="DonDatHang_ChiTietDatHang", Storage="_DonDatHang", ThisKey="SoDH", OtherKey="SoDH", IsForeignKey=true)]
		public DonDatHang DonDatHang
		{
			get
			{
				return this._DonDatHang.Entity;
			}
			set
			{
				DonDatHang previousValue = this._DonDatHang.Entity;
				if (((previousValue != value) 
							|| (this._DonDatHang.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._DonDatHang.Entity = null;
						previousValue.ChiTietDatHangs.Remove(this);
					}
					this._DonDatHang.Entity = value;
					if ((value != null))
					{
						value.ChiTietDatHangs.Add(this);
						this._SoDH = value.SoDH;
					}
					else
					{
						this._SoDH = default(int);
					}
					this.SendPropertyChanged("DonDatHang");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.DonDatHang")]
	public partial class DonDatHang : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _SoDH;
		
		private System.Nullable<int> _MaKH;
		
		private System.Nullable<System.DateTime> _NgayDH;
		
		private System.Nullable<System.DateTime> _NgayGiao;
		
		private System.Nullable<bool> _DaThanhToan;
		
		private System.Nullable<bool> _TinhTrangGiaoHang;
		
		private EntitySet<ChiTietDatHang> _ChiTietDatHangs;
		
		private EntityRef<KhachHang> _KhachHang;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnSoDHChanging(int value);
    partial void OnSoDHChanged();
    partial void OnMaKHChanging(System.Nullable<int> value);
    partial void OnMaKHChanged();
    partial void OnNgayDHChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayDHChanged();
    partial void OnNgayGiaoChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayGiaoChanged();
    partial void OnDaThanhToanChanging(System.Nullable<bool> value);
    partial void OnDaThanhToanChanged();
    partial void OnTinhTrangGiaoHangChanging(System.Nullable<bool> value);
    partial void OnTinhTrangGiaoHangChanged();
    #endregion
		
		public DonDatHang()
		{
			this._ChiTietDatHangs = new EntitySet<ChiTietDatHang>(new Action<ChiTietDatHang>(this.attach_ChiTietDatHangs), new Action<ChiTietDatHang>(this.detach_ChiTietDatHangs));
			this._KhachHang = default(EntityRef<KhachHang>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoDH", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int SoDH
		{
			get
			{
				return this._SoDH;
			}
			set
			{
				if ((this._SoDH != value))
				{
					this.OnSoDHChanging(value);
					this.SendPropertyChanging();
					this._SoDH = value;
					this.SendPropertyChanged("SoDH");
					this.OnSoDHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaKH", DbType="Int")]
		public System.Nullable<int> MaKH
		{
			get
			{
				return this._MaKH;
			}
			set
			{
				if ((this._MaKH != value))
				{
					if (this._KhachHang.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMaKHChanging(value);
					this.SendPropertyChanging();
					this._MaKH = value;
					this.SendPropertyChanged("MaKH");
					this.OnMaKHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayDH", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayDH
		{
			get
			{
				return this._NgayDH;
			}
			set
			{
				if ((this._NgayDH != value))
				{
					this.OnNgayDHChanging(value);
					this.SendPropertyChanging();
					this._NgayDH = value;
					this.SendPropertyChanged("NgayDH");
					this.OnNgayDHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayGiao", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayGiao
		{
			get
			{
				return this._NgayGiao;
			}
			set
			{
				if ((this._NgayGiao != value))
				{
					this.OnNgayGiaoChanging(value);
					this.SendPropertyChanging();
					this._NgayGiao = value;
					this.SendPropertyChanged("NgayGiao");
					this.OnNgayGiaoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DaThanhToan", DbType="Bit")]
		public System.Nullable<bool> DaThanhToan
		{
			get
			{
				return this._DaThanhToan;
			}
			set
			{
				if ((this._DaThanhToan != value))
				{
					this.OnDaThanhToanChanging(value);
					this.SendPropertyChanging();
					this._DaThanhToan = value;
					this.SendPropertyChanged("DaThanhToan");
					this.OnDaThanhToanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TinhTrangGiaoHang", DbType="Bit")]
		public System.Nullable<bool> TinhTrangGiaoHang
		{
			get
			{
				return this._TinhTrangGiaoHang;
			}
			set
			{
				if ((this._TinhTrangGiaoHang != value))
				{
					this.OnTinhTrangGiaoHangChanging(value);
					this.SendPropertyChanging();
					this._TinhTrangGiaoHang = value;
					this.SendPropertyChanged("TinhTrangGiaoHang");
					this.OnTinhTrangGiaoHangChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="DonDatHang_ChiTietDatHang", Storage="_ChiTietDatHangs", ThisKey="SoDH", OtherKey="SoDH")]
		public EntitySet<ChiTietDatHang> ChiTietDatHangs
		{
			get
			{
				return this._ChiTietDatHangs;
			}
			set
			{
				this._ChiTietDatHangs.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KhachHang_DonDatHang", Storage="_KhachHang", ThisKey="MaKH", OtherKey="MaKH", IsForeignKey=true)]
		public KhachHang KhachHang
		{
			get
			{
				return this._KhachHang.Entity;
			}
			set
			{
				KhachHang previousValue = this._KhachHang.Entity;
				if (((previousValue != value) 
							|| (this._KhachHang.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._KhachHang.Entity = null;
						previousValue.DonDatHangs.Remove(this);
					}
					this._KhachHang.Entity = value;
					if ((value != null))
					{
						value.DonDatHangs.Add(this);
						this._MaKH = value.MaKH;
					}
					else
					{
						this._MaKH = default(Nullable<int>);
					}
					this.SendPropertyChanged("KhachHang");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_ChiTietDatHangs(ChiTietDatHang entity)
		{
			this.SendPropertyChanging();
			entity.DonDatHang = this;
		}
		
		private void detach_ChiTietDatHangs(ChiTietDatHang entity)
		{
			this.SendPropertyChanging();
			entity.DonDatHang = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.KhachHang")]
	public partial class KhachHang : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MaKH;
		
		private string _HoTen;
		
		private string _TaiKhoan;
		
		private string _MatKhau;
		
		private string _Email;
		
		private string _DiachiKH;
		
		private string _DienThoaiKH;
		
		private System.Nullable<System.DateTime> _NgaySinh;
		
		private EntitySet<DonDatHang> _DonDatHangs;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMaKHChanging(int value);
    partial void OnMaKHChanged();
    partial void OnHoTenChanging(string value);
    partial void OnHoTenChanged();
    partial void OnTaiKhoanChanging(string value);
    partial void OnTaiKhoanChanged();
    partial void OnMatKhauChanging(string value);
    partial void OnMatKhauChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnDiachiKHChanging(string value);
    partial void OnDiachiKHChanged();
    partial void OnDienThoaiKHChanging(string value);
    partial void OnDienThoaiKHChanged();
    partial void OnNgaySinhChanging(System.Nullable<System.DateTime> value);
    partial void OnNgaySinhChanged();
    #endregion
		
		public KhachHang()
		{
			this._DonDatHangs = new EntitySet<DonDatHang>(new Action<DonDatHang>(this.attach_DonDatHangs), new Action<DonDatHang>(this.detach_DonDatHangs));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaKH", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MaKH
		{
			get
			{
				return this._MaKH;
			}
			set
			{
				if ((this._MaKH != value))
				{
					this.OnMaKHChanging(value);
					this.SendPropertyChanging();
					this._MaKH = value;
					this.SendPropertyChanged("MaKH");
					this.OnMaKHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HoTen", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string HoTen
		{
			get
			{
				return this._HoTen;
			}
			set
			{
				if ((this._HoTen != value))
				{
					this.OnHoTenChanging(value);
					this.SendPropertyChanging();
					this._HoTen = value;
					this.SendPropertyChanged("HoTen");
					this.OnHoTenChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TaiKhoan", DbType="VarChar(50)")]
		public string TaiKhoan
		{
			get
			{
				return this._TaiKhoan;
			}
			set
			{
				if ((this._TaiKhoan != value))
				{
					this.OnTaiKhoanChanging(value);
					this.SendPropertyChanging();
					this._TaiKhoan = value;
					this.SendPropertyChanged("TaiKhoan");
					this.OnTaiKhoanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MatKhau", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string MatKhau
		{
			get
			{
				return this._MatKhau;
			}
			set
			{
				if ((this._MatKhau != value))
				{
					this.OnMatKhauChanging(value);
					this.SendPropertyChanging();
					this._MatKhau = value;
					this.SendPropertyChanged("MatKhau");
					this.OnMatKhauChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="VarChar(100)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiachiKH", DbType="NVarChar(200)")]
		public string DiachiKH
		{
			get
			{
				return this._DiachiKH;
			}
			set
			{
				if ((this._DiachiKH != value))
				{
					this.OnDiachiKHChanging(value);
					this.SendPropertyChanging();
					this._DiachiKH = value;
					this.SendPropertyChanged("DiachiKH");
					this.OnDiachiKHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DienThoaiKH", DbType="VarChar(50)")]
		public string DienThoaiKH
		{
			get
			{
				return this._DienThoaiKH;
			}
			set
			{
				if ((this._DienThoaiKH != value))
				{
					this.OnDienThoaiKHChanging(value);
					this.SendPropertyChanging();
					this._DienThoaiKH = value;
					this.SendPropertyChanged("DienThoaiKH");
					this.OnDienThoaiKHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgaySinh", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgaySinh
		{
			get
			{
				return this._NgaySinh;
			}
			set
			{
				if ((this._NgaySinh != value))
				{
					this.OnNgaySinhChanging(value);
					this.SendPropertyChanging();
					this._NgaySinh = value;
					this.SendPropertyChanged("NgaySinh");
					this.OnNgaySinhChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KhachHang_DonDatHang", Storage="_DonDatHangs", ThisKey="MaKH", OtherKey="MaKH")]
		public EntitySet<DonDatHang> DonDatHangs
		{
			get
			{
				return this._DonDatHangs;
			}
			set
			{
				this._DonDatHangs.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_DonDatHangs(DonDatHang entity)
		{
			this.SendPropertyChanging();
			entity.KhachHang = this;
		}
		
		private void detach_DonDatHangs(DonDatHang entity)
		{
			this.SendPropertyChanging();
			entity.KhachHang = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LoaiSPham")]
	public partial class LoaiSPham : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MaLoai;
		
		private string _TenLoai;
		
		private EntitySet<SanPham> _SanPhams;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMaLoaiChanging(int value);
    partial void OnMaLoaiChanged();
    partial void OnTenLoaiChanging(string value);
    partial void OnTenLoaiChanged();
    #endregion
		
		public LoaiSPham()
		{
			this._SanPhams = new EntitySet<SanPham>(new Action<SanPham>(this.attach_SanPhams), new Action<SanPham>(this.detach_SanPhams));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaLoai", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int MaLoai
		{
			get
			{
				return this._MaLoai;
			}
			set
			{
				if ((this._MaLoai != value))
				{
					this.OnMaLoaiChanging(value);
					this.SendPropertyChanging();
					this._MaLoai = value;
					this.SendPropertyChanged("MaLoai");
					this.OnMaLoaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenLoai", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string TenLoai
		{
			get
			{
				return this._TenLoai;
			}
			set
			{
				if ((this._TenLoai != value))
				{
					this.OnTenLoaiChanging(value);
					this.SendPropertyChanging();
					this._TenLoai = value;
					this.SendPropertyChanged("TenLoai");
					this.OnTenLoaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="LoaiSPham_SanPham", Storage="_SanPhams", ThisKey="MaLoai", OtherKey="MaLoai")]
		public EntitySet<SanPham> SanPhams
		{
			get
			{
				return this._SanPhams;
			}
			set
			{
				this._SanPhams.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_SanPhams(SanPham entity)
		{
			this.SendPropertyChanging();
			entity.LoaiSPham = this;
		}
		
		private void detach_SanPhams(SanPham entity)
		{
			this.SendPropertyChanging();
			entity.LoaiSPham = null;
		}
	}
}
#pragma warning restore 1591
