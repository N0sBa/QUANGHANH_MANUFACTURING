﻿var currentRow;
var col1;
var col2;
var col3;
var col4;
var x;
var select;
var elem;
var instance;
$(document).ready(function () {
    elem = document.querySelector('.dropdown-trigger');
    instance = M.Dropdown.getInstance(elem);
    $("a.dropdown-child").click(function () {
        select = $(this).attr("name");
        if (select == "245") {
            $('#Table2 > tbody ').remove();
            var mylineTable = "<table id='Table2'></table>";
            $("#mywrap").html(mylineTable);
            $("#mywrap").append("<tr style='border-bottom:none'><td><a class='waves-effect waves-light btn-small blue modal-trigger' href='#myadd'>Thêm</a></td><td><a class='waves-effect waves-light btn-small blue modal-trigger' href='/phong-cdvt/oto/huy-dong'>Danh sách chung</a></td><td><a class='waves-effect waves-light btn-small blue modal-trigger' href='/phong-cdvt/oto/nhom'>Xem tất cả</a></td></tr>");

            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center-align'>Số chế tạo</th><th class='center-align'>Nhà cung cấp</th><th class='center-align'>Loại ô tô</th><th class='center-align'>Ngày nhập</th><th class='center-align'>Ngày đưa vào sử dụng</th><th class='center-align'>Vị trí hiện tại</th><th class='center-align'>Tình trạng hiện tại</th><th></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chi-tiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-30201</td><td>15.17</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>10-12-2018</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='/phong-cdvt/oto/chi-tiet' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chi tiết</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>2</td><td><a href='/phong-cdvt/oto/chi-tiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-25468</td><td>15.17</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>10-12-2018</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='/phong-cdvt/oto/chi-tiet' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chi tiết</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>3</td><td><a href='/phong-cdvt/oto/chi-tiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-35481</td><td>15.17</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>10-12-2018</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='/phong-cdvt/oto/chi-tiet' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chi tiết</a></td></tr>");
        }
        if (select == "249") {
            $('#Table2 > tbody ').remove();
            var mylineTable = "<table id='Table2'></table>";
            $("#mywrap").html(mylineTable);
            $("#mywrap").append("<tr style='border-bottom:none'><td><a class='waves-effect waves-light btn-small blue modal-trigger' href='#myadd'>Thêm</a></td><td><a class='waves-effect waves-light btn-small blue modal-trigger' href='/phong-cdvt/oto/huy-dong'>Danh sách chung</a></td><td><a class='waves-effect waves-light btn-small blue modal-trigger' href='/phong-cdvt/oto/nhom'>Xem tất cả</a></td></tr>");

            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center-align'>Số chế tạo</th><th class='center-align'>Nhà cung cấp</th><th class='center-align'>Loại ô tô</th><th class='center-align'>Ngày nhập</th><th class='center-align'>Ngày đưa vào sử dụng</th><th class='center-align'>Vị trí hiện tại</th><th class='center-align'>Tình trạng hiện tại</th><th></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chi-tiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>249</a></td><td>14V5-30201</td><td>15.17</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>10-12-2018</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='/phong-cdvt/oto/chi-tiet' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chi tiết</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>2</td><td><a href='/phong-cdvt/oto/chi-tiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>249</a></td><td>14V5-25468</td><td>15.17</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>10-12-2018</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='/phong-cdvt/oto/chi-tiet' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chi tiết</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>3</td><td><a href='/phong-cdvt/oto/chi-tiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>249</a></td><td>14V5-35481</td><td>15.17</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>10-12-2018</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='/phong-cdvt/oto/chi-tiet' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chi tiết</a></td></tr>");
        }
        if (select == 'suachua') {
            $("#filter").html("Danh sách ô tô sửa chữa");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại thiết bị</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>2</td><td><a href='/phong-cdvt/oto/chitiet'>DAS</a></td><td>Xe cẩu</td><td>MS4203</td><td>246</td><td>14V1-21212</td><td>16.17</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>12-03-2019</td><td>130.000.000</td><td>15%</td><td>112.000.000</td><td>5</td><td>20-03-2019</td><td>21-08-2019</td><td>267 giờ</td><td>Kho thiết bị</td><td>Sửa chữa</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'thanhly') {
            $("#filter").html("Thanh lý");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td>245</td><td>14V5-30201</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>120.000.000</td><td>12%</td><td>104.000.000</td><td>5</td><td>10-12-2018</td><td>04-05-2019</td><td>324 giờ</td><td>Kho thiết bị</td><td>Thanh lý</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
            $("#body-table-wrapper2").append("<tr><td>2</td><td><a href='/phong-cdvt/oto/chitiet'>DAS</a></td><td>Xe cẩu</td><td>MS4203</td><td>246</td><td>14V1-21212</td><td>16.17</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>12-03-2019</td><td>130.000.000</td><td>15%</td><td>112.000.000</td><td>5</td><td>20-03-2019</td><td>21-08-2019</td><td>267 giờ</td><td>Kho thiết bị</td><td>Thanh lý</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'dieudong') {
            $("#filter").html("Điều động");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td>245</td><td>14V5-30201</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>120.000.000</td><td>12%</td><td>104.000.000</td><td>5</td><td>10-12-2018</td><td>04-05-2019</td><td>324 giờ</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
            $("#body-table-wrapper2").append("<tr><td>2</td><td><a href='/phong-cdvt/oto/chitiet'>DAS</a></td><td>Xe cẩu</td><td>MS4203</td><td>246</td><td>14V1-21212</td><td>16.17</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>12-03-2019</td><td>130.000.000</td><td>15%</td><td>112.000.000</td><td>5</td><td>20-03-2019</td><td>21-08-2019</td><td>267 giờ</td><td>Kho thiết bị</td><td>Điều động</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'capmoi') {
            $("#filter").html("Đang hoạt động");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>RAM</a></td><td>Xe cẩu</td><td>ED3-53E63</td><td>249</td><td>14V2-47822</td><td>17.51</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>12-06-2019</td><td>200.000.000</td><td>15%</td><td>112.000.000</td><td>5</td><td>22-07-2019</td><td>04-05-2019</td><td>100 giờ</td><td>Phân xưởng 1</td><td>Cấp mới</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'suco') {
            $("#filter").html("Sự cố");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>LIN</a></td><td>Xe tải</td><td>DE1234-E4</td><td>253</td><td>14V3-99999</td><td>10.01</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>03-08-2018</td><td>130.000.000</td><td>15%</td><td>112.000.000</td><td>12</td><td>10-08-2018</td><td>21-07-2019</td><td>140 giờ</td><td>Phân xưởng 2</td><td>Sự cố</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
            $("#body-table-wrapper2").append("<tr><td>2</td><td><a href='/phong-cdvt/oto/chitiet'>TUT</a></td><td>Xe xi téc</td><td>RM2018-3R</td><td>254</td><td>14V4-77777</td><td>09.71</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>12-03-2019</td><td>100.000.000</td><td>15%</td><td>85.000.000</td><td>5</td><td>20-03-2019</td><td>21-06-2019</td><td>315 giờ</td><td>Phân xưởng 2</td><td>Sự cố</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'baoduong') {
            $("#filter").html("Đến kỳ bảo dưỡng");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td>245</td><td>14V5-30201</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>120.000.000</td><td>12%</td><td>104.000.000</td><td>5</td><td>10-12-2018</td><td>04-05-2019</td><td>324 giờ</td><td>Kho thiết bị</td><td>Bảo dưỡng</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'kiemdinh') {
            $("#filter").html("Đang đăng kiểm");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>MOE</a></td><td>Xe xi téc</td><td>KU1019-3R</td><td>259</td><td>14V3-21774</td><td>19.71</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>15-04-2019</td><td>110.000.000</td><td>15%</td><td>89.000.000</td><td>8</td><td>10-02-2019</td><td>21-05-2019</td><td>305 giờ</td><td>Phân xưởng 2</td><td>Kiểm định</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'baoduong') {
            $("#filter").html("Đang bảo dưỡng");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>JON</a></td><td>Xe xi tắc</td><td>MS4204</td><td>247</td><td>14V5-11111</td><td>16.71</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>12-06-2019</td><td>125.000.000</td><td>10%</td><td>112.500.000</td><td>5</td><td>20-06-2019</td><td>21-07-2019</td><td>345 giờ</td><td>Phân xưởng 3</td><td>Đang bảo dưỡng</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
            $("#body-table-wrapper2").append("<tr><td>2</td><td><a href='/phong-cdvt/oto/chitiet'>CPU</a></td><td>Xe tải</td><td>RDE245-3E</td><td>250</td><td>14V5-21900</td><td>20.43</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>11-05-2018</td><td>130.000.000</td><td>15%</td><td>112.000.000</td><td>5</td><td>15-05-2018</td><td>13-07-2019</td><td>123 giờ</td><td>Lò than 2</td><td>Đang bảo dưỡng</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
            $("#body-table-wrapper2").append("<tr><td>3</td><td><a href='/phong-cdvt/oto/chitiet'>DAN</a></td><td>Xe xi tắc</td><td>HE130000</td><td>251</td><td>14V2-21211</td><td>21.98</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>11-06-2019</td><td>200.000.000</td><td>15%</td><td>170.000.000</td><td>6</td><td>20-06-2019</td><td>21-12-2019</td><td>100 giờ</td><td>Lò than 2</td><td>Đang bảo dưỡng</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
            $("#body-table-wrapper2").append("<tr><td>4</td><td><a href='/phong-cdvt/oto/chitiet'>SAD</a></td><td>Xe xi tắc</td><td>EMS2424-E3</td><td>252</td><td>14V5-22222</td><td>21.12</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>12-04-2019</td><td>130.000.000</td><td>15%</td><td>112.000.000</td><td>8</td><td>20-04-2019</td><td>21-12-2019</td><td>120 giờ</td><td>Phân xưởng 2</td><td>Đang bảo dưỡng</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'kydangkiem') {
            $("#filter").html("Đến kỳ đăng kiểm");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center - align'>Số chế tạo</th><th class='center - align'>Loại chất lượng</th><th class='center - align'>Nhà cung cấp</th><th class='center - align'>Loại ô tô</th><th class='center - align'>Ngày nhập</th><th class='center - align'>Nguyên giá</th><th class='center - align'>Khấu hao ước tính</th><th class='center - align'>Khấu hao hiện tại</th><th class='center - align'>Thời hạn bảo hiểm(tháng)</th><th class='center - align'>Ngày đưa vào sử dụng</th><th class='center - align'>Ngày bảo dưỡng gần nhất</th><th class='center - align'>Tổng giờ hoạt động(tính từ lần bảo dưỡng gần nhất)</th><th class='center - align'>Vị trí hiện tại</th><th class='center - align'>Tình trạng hiện tại</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td><a href='/phong-cdvt/oto/chitiet'>CSD</a></td><td>Xe tải</td><td>SSE222-33</td><td>258</td><td>14V5-88821</td><td>20.49</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>04-05-2018</td><td>130.000.000</td><td>15%</td><td>112.000.000</td><td>5</td><td>15-05-2018</td><td>13-07-2019</td><td>123 giờ</td><td>Kho thiết bị</td><td>Chờ điều động</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr >");
        }
        if (select == 'banhlop') {
            $("#filter").html("Ô tô bánh lốp");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center-align'>Số chế tạo</th><th class='center-align'>Loại chất lượng</th><th class='center-align'>Nhà cung cấp</th><th class='center-align'>Loại ô tô</th><th class='center-align'>Ngày nhập</th><th class='center-align'>Nguyên giá</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-30201</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>120.000.000</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>2</td><td>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-36521</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>120.000.000</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>3</td><td>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-32658</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh lốp</td><td>04-12-2018</td><td>120.000.000</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr>");
        }
        if (select == 'banhxich') {
            $("#filter").html("Ô tô bánh xích");
            $('#Table > tbody ').remove();
            $("#pagi").remove();
            var outlineTable = "<table id='Table' class='striped table-responsive centered table-bordered mytable'><thead><tr><th class='center-align'>STT</th><th class='center-align'>Mã</th><th class='center-align'>Tên</th><th class='center-align'>Số hiệu</th><th class='center-align'>Mã TSCĐ</th><th class='center-align'>Biển kiểm soát</th><th class='center-align'>Số chế tạo</th><th class='center-align'>Loại chất lượng</th><th class='center-align'>Nhà cung cấp</th><th class='center-align'>Loại ô tô</th><th class='center-align'>Ngày nhập</th><th class='center-align'>Nguyên giá</th><th colspan='2'></th></tr></thead><tbody id='body-table-wrapper2'></tbody>";
            $("#table-wrapper2").html(outlineTable);
            $("#body-table-wrapper2").append("<tr><td>1</td><td>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-30201</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>04-12-2018</td><td>120.000.000</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>2</td><td>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-36521</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>04-12-2018</td><td>120.000.000</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr>");
            $("#body-table-wrapper2").append("<tr><td>3</td><td>SFC</a></td><td>Xe tải</td><td>ECM660-IV</td><td><a class='dropdown-child' href='#' name='245'>245</a></td><td>14V5-32658</td><td>15.17</td><td>A</td><td>TC MOTOR</td><td>Bánh xích</td><td>04-12-2018</td><td>120.000.000</td><td style='text-align: center'><a href='#myedit' class='waves-effect waves-light btn blue darken-1 modal-trigger'>Chỉnh&nbspsửa</a></td><td style='text-align: center'><a href='#myaleart' class='waves-effect waves-light btn red modal-trigger'>Xoá</a></td></tr>");
        }
        $('.dropdown-trigger').dropdown('close');
    });
});