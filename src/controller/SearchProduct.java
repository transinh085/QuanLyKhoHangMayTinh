package controller;

import dao.MayTinhDAO;
import java.util.ArrayList;
import model.MayTinh;

/**
 *
 * @author sinh
 */
public class SearchProduct {

    public static SearchProduct getInstance() {
        return new SearchProduct();
    }

    public ArrayList<MayTinh> searchTatCa(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getTrangThai() == 1) {
                if (mt.getMaMay().toLowerCase().contains(text.toLowerCase()) || mt.getTenMay().toLowerCase().contains(text.toLowerCase())
                        || mt.getTenCpu().toLowerCase().contains(text.toLowerCase())
                        || mt.getCardManHinh().toLowerCase().contains(text.toLowerCase())
                        || mt.getXuatXu().toLowerCase().contains(text.toLowerCase())) {
                    result.add(mt);
                }
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchMaMay(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getTrangThai() == 1) {
                if (mt.getMaMay().toLowerCase().contains(text.toLowerCase())) {
                    result.add(mt);
                }
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchTenMay(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getTrangThai() == 1) {
                if (mt.getTenMay().toLowerCase().contains(text.toLowerCase())) {
                    result.add(mt);
                }
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchSoLuong(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getTrangThai() == 1) {
                if (text.length() != 0) {
                    if (mt.getSoLuong() > Integer.parseInt(text)) {
                        result.add(mt);
                    }
                } else {
                    result.add(mt);
                }
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchDonGia(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getTrangThai() == 1) {

                if (text.length() != 0) {
                    if (mt.getGia() > Integer.parseInt(text)) {
                        result.add(mt);
                    }
                }
                else {
                    result.add(mt);
                }
            } 
        }
        return result;
    }

    public ArrayList<MayTinh> searchRam(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getRam().toLowerCase().contains(text.toLowerCase())) {
                result.add(mt);
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchCpu(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getTenCpu().toLowerCase().contains(text.toLowerCase())) {
                result.add(mt);
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchDungLuong(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getRom().toLowerCase().contains(text.toLowerCase())) {
                result.add(mt);
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchCard(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getCardManHinh().toLowerCase().contains(text.toLowerCase())) {
                result.add(mt);
            }
        }
        return result;
    }


    public ArrayList<MayTinh> searchXuatXu(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getXuatXu().toLowerCase().contains(text.toLowerCase())) {
                result.add(mt);
            }
        }
        return result;
    }

    public ArrayList<MayTinh> searchDaXoa(String text) {
        ArrayList<MayTinh> result = new ArrayList<>();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAll();
        for (var mt : armt) {
            if (mt.getTrangThai() == 0) {
                if (mt.getMaMay().toLowerCase().contains(text.toLowerCase())) {
                    result.add(mt);
                }
            }
        }
        return result;
    }

    public MayTinh searchId(String text) {
        MayTinh result = new MayTinh();
        ArrayList<MayTinh> armt = MayTinhDAO.getInstance().selectAllExist();
        for (var mt : armt) {
            if (mt.getMaMay().toLowerCase().contains(text.toLowerCase())) {
                return mt;
            }
        }
        return null;
    }
}
