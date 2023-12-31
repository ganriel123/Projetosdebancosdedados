﻿
namespace ProjetoLojaABC
{
    partial class FrmPesquisarFuncionários
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPesquisarFuncionários));
            this.gpbPesquisar = new System.Windows.Forms.GroupBox();
            this.txtDescricao = new System.Windows.Forms.TextBox();
            this.lblDescricao = new System.Windows.Forms.Label();
            this.rdbNome = new System.Windows.Forms.RadioButton();
            this.rdbCodigo = new System.Windows.Forms.RadioButton();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.ltbPesquisa = new System.Windows.Forms.ListBox();
            this.btnPesquisar = new System.Windows.Forms.Button();
            this.btnLimpar = new System.Windows.Forms.Button();
            this.gpbPesquisar.SuspendLayout();
            this.SuspendLayout();
            // 
            // gpbPesquisar
            // 
            this.gpbPesquisar.Controls.Add(this.txtDescricao);
            this.gpbPesquisar.Controls.Add(this.lblDescricao);
            this.gpbPesquisar.Controls.Add(this.rdbNome);
            this.gpbPesquisar.Controls.Add(this.rdbCodigo);
            this.gpbPesquisar.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbPesquisar.Location = new System.Drawing.Point(22, 17);
            this.gpbPesquisar.Name = "gpbPesquisar";
            this.gpbPesquisar.Size = new System.Drawing.Size(450, 191);
            this.gpbPesquisar.TabIndex = 0;
            this.gpbPesquisar.TabStop = false;
            this.gpbPesquisar.Text = "Pesquisar Por";
            this.gpbPesquisar.Enter += new System.EventHandler(this.gpbPesquisar_Enter);
            // 
            // txtDescricao
            // 
            this.txtDescricao.Location = new System.Drawing.Point(92, 92);
            this.txtDescricao.Name = "txtDescricao";
            this.txtDescricao.Size = new System.Drawing.Size(301, 24);
            this.txtDescricao.TabIndex = 3;
            // 
            // lblDescricao
            // 
            this.lblDescricao.AutoSize = true;
            this.lblDescricao.Location = new System.Drawing.Point(10, 95);
            this.lblDescricao.Name = "lblDescricao";
            this.lblDescricao.Size = new System.Drawing.Size(76, 18);
            this.lblDescricao.TabIndex = 2;
            this.lblDescricao.Text = "Descrição";
            // 
            // rdbNome
            // 
            this.rdbNome.AutoSize = true;
            this.rdbNome.Location = new System.Drawing.Point(127, 35);
            this.rdbNome.Name = "rdbNome";
            this.rdbNome.Size = new System.Drawing.Size(67, 22);
            this.rdbNome.TabIndex = 2;
            this.rdbNome.TabStop = true;
            this.rdbNome.Text = "&Nome";
            this.rdbNome.UseVisualStyleBackColor = true;
            this.rdbNome.CheckedChanged += new System.EventHandler(this.rdbNome_CheckedChanged);
            // 
            // rdbCodigo
            // 
            this.rdbCodigo.AutoSize = true;
            this.rdbCodigo.Location = new System.Drawing.Point(15, 35);
            this.rdbCodigo.Name = "rdbCodigo";
            this.rdbCodigo.Size = new System.Drawing.Size(74, 22);
            this.rdbCodigo.TabIndex = 1;
            this.rdbCodigo.TabStop = true;
            this.rdbCodigo.Text = "&Código";
            this.rdbCodigo.UseVisualStyleBackColor = true;
            // 
            // ltbPesquisa
            // 
            this.ltbPesquisa.FormattingEnabled = true;
            this.ltbPesquisa.Location = new System.Drawing.Point(22, 281);
            this.ltbPesquisa.Name = "ltbPesquisa";
            this.ltbPesquisa.Size = new System.Drawing.Size(780, 147);
            this.ltbPesquisa.TabIndex = 6;
            // 
            // btnPesquisar
            // 
            this.btnPesquisar.Image = ((System.Drawing.Image)(resources.GetObject("btnPesquisar.Image")));
            this.btnPesquisar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPesquisar.Location = new System.Drawing.Point(582, 50);
            this.btnPesquisar.Name = "btnPesquisar";
            this.btnPesquisar.Size = new System.Drawing.Size(146, 39);
            this.btnPesquisar.TabIndex = 4;
            this.btnPesquisar.TabStop = false;
            this.btnPesquisar.Text = "Pesquisar";
            this.btnPesquisar.UseVisualStyleBackColor = true;
            this.btnPesquisar.Click += new System.EventHandler(this.btnPesquisar_Click);
            // 
            // btnLimpar
            // 
            this.btnLimpar.Image = ((System.Drawing.Image)(resources.GetObject("btnLimpar.Image")));
            this.btnLimpar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLimpar.Location = new System.Drawing.Point(582, 136);
            this.btnLimpar.Name = "btnLimpar";
            this.btnLimpar.Size = new System.Drawing.Size(146, 45);
            this.btnLimpar.TabIndex = 5;
            this.btnLimpar.TabStop = false;
            this.btnLimpar.Text = "&Limpar";
            this.btnLimpar.UseVisualStyleBackColor = true;
            this.btnLimpar.Click += new System.EventHandler(this.btnLimpar_Click);
            // 
            // FrmPesquisarFuncionários
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(843, 448);
            this.Controls.Add(this.btnLimpar);
            this.Controls.Add(this.btnPesquisar);
            this.Controls.Add(this.ltbPesquisa);
            this.Controls.Add(this.gpbPesquisar);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmPesquisarFuncionários";
            this.Text = "FrmPesquisarFuncionários";
            this.Load += new System.EventHandler(this.FrmPesquisarFuncionários_Load);
            this.gpbPesquisar.ResumeLayout(false);
            this.gpbPesquisar.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gpbPesquisar;
        private System.Windows.Forms.TextBox txtDescricao;
        private System.Windows.Forms.Label lblDescricao;
        private System.Windows.Forms.RadioButton rdbNome;
        private System.Windows.Forms.RadioButton rdbCodigo;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.ListBox ltbPesquisa;
        private System.Windows.Forms.Button btnPesquisar;
        private System.Windows.Forms.Button btnLimpar;
    }
}