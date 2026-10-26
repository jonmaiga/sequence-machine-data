import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A332003: Number of compositions (ordered partitions) of n into distinct parts having a common factor > 1 with n.

The programs for A332003, there is no canonical definition to state claims against.
-/

/-! ## A332003.P16177396466536339217

`A337983(and(A098852(n+1), A212444(n))+n)`
-/

namespace A332003.P16177396466536339217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 (Int.land (A098852 (n + 1)) (A212444 n) + (n : ℤ)).toNat

end

end A332003.P16177396466536339217

/-! ## A332003.P17893829423101637836

`A337983(lt[A341653(n+2), A061150(2*n+3)])`
-/

namespace A332003.P17893829423101637836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341653 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061150 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332003.P17893829423101637836

/-!
# A332004: Number of compositions (ordered partitions) of n into distinct and relatively prime parts.

The programs for A332004, there is no canonical definition to state claims against.
-/

/-! ## A332004.P12211893400090232363

`A339162(A028310(n))+A337451(n)`
-/

namespace A332004.P12211893400090232363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339162 (A028310 n).toNat + A337451 n

end

end A332004.P12211893400090232363

/-! ## A332004.P6068308703667559855

`A032020(n)-A332003(A181796(A011782(n)))`
-/

namespace A332004.P6068308703667559855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A332003 (A181796 (A011782 n).toNat).toNat

end

end A332004.P6068308703667559855

/-!
# A332005: Number of compositions (ordered partitions) of n into distinct centered triangular numbers.

The programs for A332005, there is no canonical definition to state claims against.
-/

/-! ## A332005.P10152753804438159924

`A332006(eq[A010894(n), A035444(n)])`
-/

namespace A332005.P10152753804438159924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A332005.P10152753804438159924

/-! ## A332005.P8459317860764482125

`A014963(A089759(n))*A331919(A023810(n+1))`
-/

namespace A332005.P8459317860764482125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A089759 n).toNat * A331919 (A023810 (n + 1)).toNat

end

end A332005.P8459317860764482125

/-! ## A332005.P3723541940495603954

`A331919(lt[A331926(n), A118849(n+3)])`
-/

namespace A332005.P3723541940495603954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332005.P3723541940495603954

/-! ## A332005.P13000842096746018693

`A331919(lt[A035468(2*(n+2)), A374494(n+1)])`
-/

namespace A332005.P13000842096746018693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035468 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332005.P13000842096746018693

/-! ## A332005.P10228006717246666563

`A331919(lt[A331923(2*(n+2)), A001690(2*(n+1))])`
-/

namespace A332005.P10228006717246666563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331923 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332005.P10228006717246666563

/-!
# A332006: Number of compositions (ordered partitions) of n into distinct centered square numbers.

The programs for A332006, there is no canonical definition to state claims against.
-/

/-! ## A332006.P10819765204727680249

`A332016(A047442(n+1))`
-/

namespace A332006.P10819765204727680249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (A047442 (n + 1)).toNat

end

end A332006.P10819765204727680249

/-! ## A332006.P1443918935946341618

`A332016(A057354(n)+A047263(n+1))`
-/

namespace A332006.P1443918935946341618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (A057354 n + A047263 (n + 1)).toNat

end

end A332006.P1443918935946341618

/-! ## A332006.P12468350485876390798

`A332016(eq[A007814(n+1), A280237(n)])`
-/

namespace A332006.P12468350485876390798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A332006.P12468350485876390798

/-! ## A332006.P16542997721329786425

`A332014(lt[A331984(n+2), A331998(n+4)])`
-/

namespace A332006.P16542997721329786425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331998 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332006.P16542997721329786425

/-! ## A332006.P9838993973269915276

`A331984(lt[n/3, A340614(2*(n+2))])`
-/

namespace A332006.P9838993973269915276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340614 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A332006.P9838993973269915276

/-!
# A332007: Number of compositions (ordered partitions) of n into distinct pentagonal numbers.

The programs for A332007, there is no canonical definition to state claims against.
-/

/-! ## A332007.P12765811080356251672

`A332006(eq[A123068(n+1), A333921(n)])`
-/

namespace A332007.P12765811080356251672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A332007.P12765811080356251672

/-! ## A332007.P4588609253339459658

`A332014(A039108(n+1))%A002765(A039108(n+1))`
-/

namespace A332007.P4588609253339459658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332014 (A039108 (n + 1)).toNat) (A002765 (A039108 (n + 1)).toNat)

end

end A332007.P4588609253339459658

/-! ## A332007.P1503273039181156497

`A332006(lt[A332005(3*n+1), A331989(2*(n+1))])`
-/

namespace A332007.P1503273039181156497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332005 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331989 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332007.P1503273039181156497

/-! ## A332007.P7468893485007307752

`A332014(A039108(n+1))%A002765(A265312(n))`
-/

namespace A332007.P7468893485007307752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332014 (A039108 (n + 1)).toNat) (A002765 (A265312 n).toNat)

end

end A332007.P7468893485007307752

/-! ## A332007.P2281165664316966890

`A332014(lt[A025480(n), A175844(n+4)])`
-/

namespace A332007.P2281165664316966890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175844 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332007.P2281165664316966890

/-!
# A332008: Numbers k such that phi(k) and phi(k+1) are perfect powers (A001597).

The programs for A332008, there is no canonical definition to state claims against.
-/

/-! ## A332008.P15323494575456300483

`∩[A166955(n+1)-1, A166955(n+1)]`
-/

namespace A332008.P15323494575456300483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166955 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332008.P15323494575456300483

/-! ## A332008.P2614705305474751794

`lt[6, (a(n-1)+5)*A075802(A000010(n+1))]` with `a(0)=4`
-/

namespace A332008.P2614705305474751794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  (f2 (n - 1) + 5) * A075802 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A332008.P2614705305474751794

/-! ## A332008.P8383288266189428873

`∩[A166955(n+1), A023443(A166955(n+1))]`
-/

namespace A332008.P8383288266189428873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A166955 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332008.P8383288266189428873

/-!
# A332011: Let k be the least positive number such that n AND floor(n/k) = 0 (where AND denotes the bitwise AND operator); a(n) = floor(n/k).

The programs for A332011, there is no canonical definition to state claims against.
-/

/-! ## A332011.P13718778066718569312

`floor(n/A331985(n))`
-/

namespace A332011.P13718778066718569312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A331985 n : ℚ)⌋

end

end A332011.P13718778066718569312

/-! ## A332011.P13032621435279058231

`val(A000079(n), A000079(A331985(n)))`
-/

namespace A332011.P13032621435279058231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A331985 n).toNat).toNat

end

end A332011.P13032621435279058231

/-! ## A332011.P15165747679363688520

`val(A000244(n), A000244(A331985(n)))`
-/

namespace A332011.P15165747679363688520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000244 n).toNat (A000244 (A331985 n).toNat).toNat

end

end A332011.P15165747679363688520

/-! ## A332011.P18087604179009786665

`val(A000302(n), A000302(A331985(n)))`
-/

namespace A332011.P18087604179009786665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000302 n).toNat (A000302 (A331985 n).toNat).toNat

end

end A332011.P18087604179009786665

/-! ## A332011.P7536134886720703614

`val(A000400(n), A000400(A331985(n)))`
-/

namespace A332011.P7536134886720703614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000400 n).toNat (A000400 (A331985 n).toNat).toNat

end

end A332011.P7536134886720703614

/-!
# A332012: a(n) is the greatest square of the form floor(n/k) where k > 0.

The programs for A332012, there is no canonical definition to state claims against.
-/

/-! ## A332012.P10026836091575259293

`A331958(n)²`
-/

namespace A332012.P10026836091575259293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 n ^ 2

end

end A332012.P10026836091575259293

/-! ## A332012.P4784468869086122656

`floor(n/A331953(n))`
-/

namespace A332012.P4784468869086122656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A331953 n : ℚ)⌋

end

end A332012.P4784468869086122656

/-! ## A332012.P1116423456146326326

`A331958(A331958(n)^2)^2`
-/

namespace A332012.P1116423456146326326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (A331958 n ^ 2).toNat ^ 2

end

end A332012.P1116423456146326326

/-! ## A332012.P11758074866377431545

`A000196(ceil(n/A331953(n)))²`
-/

namespace A332012.P11758074866377431545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈(n : ℚ) / (A331953 n : ℚ)⌉.toNat ^ 2

end

end A332012.P11758074866377431545

/-! ## A332012.P8485744318155820840

`A331958(char[1]+n)*A331958(n)`
-/

namespace A332012.P8485744318155820840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 ((if ∃ j, f1 j = n then 1 else 0) + n) * A331958 n

end

end A332012.P8485744318155820840

/-! ## A332012.P15732718168225180463

`A004526(2*A331958(n)*A331958(n))`
-/

namespace A332012.P15732718168225180463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A331958 n * A331958 n).toNat

end

end A332012.P15732718168225180463

/-! ## A332012.P10927269322643493866

`A331958(A331958(n)^4)`
-/

namespace A332012.P10927269322643493866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (A331958 n ^ 4).toNat

end

end A332012.P10927269322643493866

/-!
# A332013: T(n, k) is the least positive m such that floor(n/m) AND floor(k/m) = 0 (where AND denotes the bitwise AND operator). Square array T(n, k) read by antidiagonals, n >= 0 and k >= 0.

The programs for A332013, there is no canonical definition to state claims against.
-/

/-! ## A332013.P14429642556979467942

`A039969(A186729(n))+A004198(n)`
-/

namespace A332013.P14429642556979467942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (A186729 n).toNat + A004198 n

end

end A332013.P14429642556979467942

/-! ## A332013.P4945976802072844923

`A004198(n)%A347763(n)+1`
-/

namespace A332013.P4945976802072844923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004198 n) (A347763 n) + 1

end

end A332013.P4945976802072844923

/-! ## A332013.P13181778248145918824

`A004198(n)+A001511(Δ[n^3])`
-/

namespace A332013.P13181778248145918824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A332013.P13181778248145918824

/-! ## A332013.P3060482384708913781

`A004198(n)-A033999(Δ[n^3])`
-/

namespace A332013.P3060482384708913781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n - A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A332013.P3060482384708913781

/-! ## A332013.P1824366513045791739

`A004198(n)+A000035(A003215(n))`
-/

namespace A332013.P1824366513045791739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + A000035 (A003215 n).toNat

end

end A332013.P1824366513045791739

/-! ## A332013.P15004742064559755354

`A010892(A028896(n))+A004198(n)`
-/

namespace A332013.P15004742064559755354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A028896 n).toNat + A004198 n

end

end A332013.P15004742064559755354

/-! ## A332013.P4773829763549628882

`A004198(n)+A177702(A033428(n))²`
-/

namespace A332013.P4773829763549628882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + A177702 (A033428 n).toNat ^ 2

end

end A332013.P4773829763549628882

/-! ## A332013.P8094752461304114302

`A000005(p?[A048735(n)]^A004198(n))`
-/

namespace A332013.P8094752461304114302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A004198 n : ℤ))).toNat

end

end A332013.P8094752461304114302

/-! ## A332013.P677104215653673773

`A004198(n)+A001222(A038699(n+1))`
-/

namespace A332013.P677104215653673773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + A001222 (A038699 (n + 1)).toNat

end

end A332013.P677104215653673773

/-!
# A332014: Number of compositions (ordered partitions) of n into distinct hexagonal numbers.

The programs for A332014, there is no canonical definition to state claims against.
-/

/-! ## A332014.P10877942553101677033

`A332015(A047263(n+1)%A216516(n+1))`
-/

namespace A332014.P10877942553101677033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (Int.tmod (A047263 (n + 1)) (A216516 (n + 1))).toNat

end

end A332014.P10877942553101677033

/-! ## A332014.P8748428119196866836

`A332015(A047263(n+1))+A008683(A234140(n+1))`
-/

namespace A332014.P8748428119196866836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A047263 (n + 1)).toNat + A008683 (A234140 (n + 1)).toNat

end

end A332014.P8748428119196866836

/-! ## A332014.P6208171130774959797

`A001221(A089969(n+6))*A332015(A047263(n+1))`
-/

namespace A332014.P6208171130774959797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A089969 (n + 6)).toNat * A332015 (A047263 (n + 1)).toNat

end

end A332014.P6208171130774959797

/-! ## A332014.P5234624541234999990

`A332016(lt[A332011(n), A332054(2*(n+2))])`
-/

namespace A332014.P5234624541234999990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332054 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332014.P5234624541234999990

/-!
# A332015: Number of compositions (ordered partitions) of n into distinct heptagonal numbers.

The programs for A332015, there is no canonical definition to state claims against.
-/

/-! ## A332015.P13345353046820771981

`A332016(A032798(n+1)-1)`
-/

namespace A332015.P13345353046820771981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (A032798 (n + 1) - 1).toNat

end

end A332015.P13345353046820771981

/-! ## A332015.P15903204661882325462

`A332014(A171974(n+1))%A338947(A096431(n+1))`
-/

namespace A332015.P15903204661882325462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332014 (A171974 (n + 1)).toNat) (A338947 (A096431 (n + 1)).toNat)

end

end A332015.P15903204661882325462

/-! ## A332015.P18370201327395314193

`A332014(A171974(n+1))%A224353(A265312(n))`
-/

namespace A332015.P18370201327395314193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332014 (A171974 (n + 1)).toNat) (A224353 (A265312 n).toNat)

end

end A332015.P18370201327395314193

/-! ## A332015.P16778275439551113242

`A332016(lt[A332001(n+1), A331998(n+4)])`
-/

namespace A332015.P16778275439551113242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331998 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332015.P16778275439551113242

/-! ## A332015.P9343811371880327209

`A332016(A029927(n)%A002765(n))`
-/

namespace A332015.P9343811371880327209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (Int.tmod (A029927 n) (A002765 n)).toNat

end

end A332015.P9343811371880327209

/-!
# A332016: Number of compositions (ordered partitions) of n into distinct octagonal numbers.

The programs for A332016, there is no canonical definition to state claims against.
-/

/-! ## A332016.P2873722474804382514

`a(a(n-2))*A332015(A210062(n))` with `a(0)=1, a(1)=1`
-/

namespace A332016.P2873722474804382514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 2)).toNat * A332015 (A210062 n).toNat

end

end A332016.P2873722474804382514

/-! ## A332016.P11951032927710960645

`A279281(n)*A332015(A210062(n))`
-/

namespace A332016.P11951032927710960645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279281 n * A332015 (A210062 n).toNat

end

end A332016.P11951032927710960645

/-! ## A332016.P6488087431017814320

`A332015(A210062(n))-char[A043422(n+1)]`
-/

namespace A332016.P6488087431017814320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043422 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A210062 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332016.P6488087431017814320

/-! ## A332016.P14311790120408222683

`A332015(A210062(n))-char[A335351(2*n+3)]`
-/

namespace A332016.P14311790120408222683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335351 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A210062 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332016.P14311790120408222683

/-! ## A332016.P4305293098418729150

`A332015(A210062(n))%A103323(A056868(n+1))`
-/

namespace A332016.P4305293098418729150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332015 (A210062 n).toNat) (A103323 (A056868 (n + 1)).toNat)

end

end A332016.P4305293098418729150

/-! ## A332016.P9551341591267400057

`A332015(A210062(n)%A330007(n+1))`
-/

namespace A332016.P9551341591267400057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (Int.tmod (A210062 n) (A330007 (n + 1))).toNat

end

end A332016.P9551341591267400057

/-! ## A332016.P7143815532226140874

`A332015(A210062(n))+A037213(A071162(n))`
-/

namespace A332016.P7143815532226140874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 (A210062 n).toNat + A037213 (A071162 n).toNat

end

end A332016.P7143815532226140874

/-! ## A332016.P15634876032406334994

`A332015(A210062(n))^A014963(A093656(n+1))`
-/

namespace A332016.P15634876032406334994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332015 (A210062 n).toNat : ℚ) ^ (A014963 (A093656 (n + 1)).toNat : ℤ)

end

end A332016.P15634876032406334994

/-!
# A332017: a(n) is the sum of the squares of the lengths of the runs of consecutive equal digits in the binary representation of n.

The programs for A332017, the canonical program `A332017.P15579467160803969662` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332017 has offset 0).

The definition of A332017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332017.P15579467160803969662

`A289506(A382255(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332017

/-- `A289506(A382255(n))` -/
def P15579467160803969662.Spec : Prop :=
  ∀ n, P15579467160803969662.a n = A332017 n

theorem P15579467160803969662.correct : P15579467160803969662.Spec := by
  intro n
  simp only [A332017]

end A332017

/-! ## A332017.P2937587767624342796

`∑{e}[A057335(xor(n, floor(n/2))), #²]`
-/

namespace A332017.P2937587767624342796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A332017.P2937587767624342796

namespace A332017

/-- `∑{e}[A057335(xor(n, floor(n/2))), #²]` -/
def P2937587767624342796.Spec : Prop :=
  ∀ n, (P2937587767624342796.a n : ℤ) = A332017 n

end A332017

/-! ## A332017.P10931715071089559224

`∑{e}[A163755(n), #²]`
-/

namespace A332017.P10931715071089559224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A332017.P10931715071089559224

namespace A332017

/-- `∑{e}[A163755(n), #²]` -/
def P10931715071089559224.Spec : Prop :=
  ∀ n, (P10931715071089559224.a n : ℤ) = A332017 n

end A332017

/-! ## A332017.P12009622973592666779

`∑{e}[A334031(xor(n, floor(n/2))), #²]`
-/

namespace A332017.P12009622973592666779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A332017.P12009622973592666779

namespace A332017

/-- `∑{e}[A334031(xor(n, floor(n/2))), #²]` -/
def P12009622973592666779.Spec : Prop :=
  ∀ n, (P12009622973592666779.a n : ℤ) = A332017 n

end A332017

/-! ## A332017.P504138380833394727

`∑{e}[A057335(A341915(n)), #²]`
-/

namespace A332017.P504138380833394727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A341915 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A332017.P504138380833394727

namespace A332017

/-- `∑{e}[A057335(A341915(n)), #²]` -/
def P504138380833394727.Spec : Prop :=
  ∀ n, (P504138380833394727.a n : ℤ) = A332017 n

end A332017

/-! ## A332017.P8597476357307916843

`A090885(A163755(n))`
-/

namespace A332017.P8597476357307916843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A163755 n).toNat

end

end A332017.P8597476357307916843

namespace A332017

/-- `A090885(A163755(n))` -/
def P8597476357307916843.Spec : Prop :=
  ∀ n, P8597476357307916843.a n = A332017 n

end A332017

/-!
# A332018: a(n) = A038502(A000265(n)) if n is even or n == 0 (mod 3), a(n) = A038502(A000265(5*n + 1)) otherwise.

The programs for A332018, there is no canonical definition to state claims against.
-/

/-! ## A332018.P3245331279001727133

`A038502(A000265(A133419(n+1)))`
-/

namespace A332018.P3245331279001727133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A000265 (A133419 (n + 1)).toNat).toNat

end

end A332018.P3245331279001727133

/-! ## A332018.P5932886117725459627

`A065330(A133419(n+1))`
-/

namespace A332018.P5932886117725459627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A133419 (n + 1)).toNat

end

end A332018.P5932886117725459627

/-! ## A332018.P17700401887476839683

`A065330(A350034(n+1))`
-/

namespace A332018.P17700401887476839683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A350034 (n + 1)).toNat

end

end A332018.P17700401887476839683

/-! ## A332018.P16016847416828330858

`A284254(2*A133419(n+1))`
-/

namespace A332018.P16016847416828330858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (2 * A133419 (n + 1)).toNat

end

end A332018.P16016847416828330858

/-! ## A332018.P8582497442879966567

`gcd(∏[A067745(n+1)], A133419(n+1))`
-/

namespace A332018.P8582497442879966567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A133419 (n + 1))

end

end A332018.P8582497442879966567

/-!
# A332019: The number of cells added in the n-th generation of the following procedure: start by coloring any triangle on the snub square tiling, then repeatedly color every cell that shares a vertex with a colored cell.

The programs for A332019, the canonical program `A332019.P17560131553977200364` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332019 has offset 1).

The definition of A332019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332019.P17560131553977200364

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9, a(2)=21, a(3)=35, a(4)=48, a(5)=60`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332019

/-- `2*a(n-1)-a(n-2)` -/
def P17560131553977200364.Spec : Prop :=
  ∀ n, P17560131553977200364.a n = A332019 (n + 1)

theorem P17560131553977200364.correct : P17560131553977200364.Spec := by
  intro n
  simp only [A332019, Nat.add_sub_cancel]

end A332019

/-!
# A332020: Positive integers m which are quadratic residues modulo prime(m).

The programs for A332020, there is no canonical definition to state claims against.
-/

/-! ## A332020.P1172724718606979944

`eq[char[A332021(n+1)], A000007(n)]`
-/

namespace A332020.P1172724718606979944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332020.P1172724718606979944

/-! ## A332020.P7109763705016749826

`eq[char[A332021(n+1)], A000038(n)]`
-/

namespace A332020.P7109763705016749826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332020.P7109763705016749826

/-! ## A332020.P7326399384063558060

`eq[A127802(n)%3, char[A332021(n+1)]]`
-/

namespace A332020.P7326399384063558060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127802 n) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332021 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A332020.P7326399384063558060

/-! ## A332020.P7552414076590084894

`eq[A127802(2*n), char[A332021(n+1)]]`
-/

namespace A332020.P7552414076590084894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332021 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A332020.P7552414076590084894

/-! ## A332020.P9076153880482275592

`eq[char[A332021(n+1)], A151933(n)]`
-/

namespace A332020.P9076153880482275592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332020.P9076153880482275592

/-!
# A332021: Elements of the set {m > 0: m is a quadratic nonresidue modulo prime(m)}.

The programs for A332021, there is no canonical definition to state claims against.
-/

/-! ## A332021.P7911479499136789960

`eq[char[A332020(n+1)], A000007(n)]`
-/

namespace A332021.P7911479499136789960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332021.P7911479499136789960

/-! ## A332021.P9756626882266689805

`eq[char[A332020(n+1)], A000038(n)]`
-/

namespace A332021.P9756626882266689805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332021.P9756626882266689805

/-! ## A332021.P12693473213717447223

`eq[char[A332020(n+1)], A002448(n)]`
-/

namespace A332021.P12693473213717447223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332021.P12693473213717447223

/-! ## A332021.P6862670335984271442

`eq[char[A332020(n+1)], A130779(n+1)]`
-/

namespace A332021.P6862670335984271442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332021.P6862670335984271442

/-! ## A332021.P3321606418116490535

`eq[A182492(2*n), char[A332020(n+1)]]`
-/

namespace A332021.P3321606418116490535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332020 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A332021.P3321606418116490535

/-!
# A332023: T(n, k) = binomial(n+2, 3) + binomial(k+1, 2) + binomial(k, 1). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A332023, the canonical program `A332023.P3102092346712143756` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332023 has offset 0).

The definition of A332023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+2, 3)+C(col(n)+1, 2)+C(col(n), 1)` (program `A332023.P3102092346712143756`, by `A332023.P3102092346712143756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332023.P3102092346712143756

`C(row(n)+2, 3)+C(col(n)+1, 2)+C(col(n), 1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332023

/-- `C(row(n)+2, 3)+C(col(n)+1, 2)+C(col(n), 1)` -/
def P3102092346712143756.Spec : Prop :=
  ∀ n, (P3102092346712143756.a n : ℤ) = A332023 n

theorem P3102092346712143756.correct : P3102092346712143756.Spec := by
  intro n
  simp only [A332023]

end A332023

/-! ## A332023.P189645963610241402

`1/6*(3*col(n)²+9*col(n)+(row(n)+1)*(row(n)+2)*row(n))`
-/

namespace A332023.P189645963610241402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (3 * SequenceMachineLib.triCol n ^ 2 + 9 * SequenceMachineLib.triCol n + (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + 2) * SequenceMachineLib.triRow n : ℚ)

end

end A332023.P189645963610241402

namespace A332023

/-- `1/6*(3*col(n)²+9*col(n)+(row(n)+1)*(row(n)+2)*row(n))` -/
def P189645963610241402.Spec : Prop :=
  ∀ n, P189645963610241402.a n = (A332023 n : ℚ)

theorem P189645963610241402.correct : P189645963610241402.Spec := by
  intro n
  simp only [A332023, Nat.add_sub_cancel, A332023.P189645963610241402.a, A332023.P3102092346712143756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332023

/-! ## A332023.P8505494194781708427

`∑[n-C(∑[char[∑[n]]], 2)]+n`
-/

namespace A332023.P8505494194781708427
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A332023.P8505494194781708427

namespace A332023

/-- `∑[n-C(∑[char[∑[n]]], 2)]+n` -/
def P8505494194781708427.Spec : Prop :=
  ∀ n, P8505494194781708427.a n = A332023 n

end A332023

/-! ## A332023.P14571610839839048895

`∑[comp[∑[n]]%C(comp[∑[n]]-n, 2)]`
-/

namespace A332023.P14571610839839048895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332023.P14571610839839048895

namespace A332023

/-- `∑[comp[∑[n]]%C(comp[∑[n]]-n, 2)]` -/
def P14571610839839048895.Spec : Prop :=
  ∀ n, (P14571610839839048895.a n : ℤ) = A332023 n

end A332023

/-! ## A332023.P1811427616130582155

`a(n-∑[char[∑[n]]])+1+n` with `a(0)=0, a(1)=1`
-/

namespace A332023.P1811427616130582155
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A332023.P1811427616130582155

namespace A332023

/-- `a(n-∑[char[∑[n]]])+1+n` -/
def P1811427616130582155.Spec : Prop :=
  ∀ n, (P1811427616130582155.a n : ℤ) = A332023 n

end A332023

/-! ## A332023.P16200143103535413167

`∑[1-(C(∑[char[∑[n]]], 2)-n)]-1`
-/

namespace A332023.P16200143103535413167
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A332023.P16200143103535413167

namespace A332023

/-- `∑[1-(C(∑[char[∑[n]]], 2)-n)]-1` -/
def P16200143103535413167.Spec : Prop :=
  ∀ n, P16200143103535413167.a n = A332023 n

end A332023

/-! ## A332023.P12796691382238938648

`∑[1-(char[∑[n]]-1)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A332023.P12796691382238938648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  1 - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332023.P12796691382238938648

namespace A332023

/-- `∑[1-(char[∑[n]]-1)*a(n-1)]` -/
def P12796691382238938648.Spec : Prop :=
  ∀ n, P12796691382238938648.a n = A332023 n

end A332023

/-! ## A332023.P8837294313041156434

`a((2*n)%comp[∑[n-1]])+n+1` with `a(0)=0, a(1)=1`
-/

namespace A332023.P8837294313041156434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (2 * n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (n + 1)

end

end A332023.P8837294313041156434

namespace A332023

/-- `a((2*n)%comp[∑[n-1]])+n+1` -/
def P8837294313041156434.Spec : Prop :=
  ∀ n, (P8837294313041156434.a n : ℤ) = A332023 n

end A332023

/-! ## A332023.P2627816438316411955

`a(n+1-(comp[∑[n]]-n))+n+1` with `a(0)=0, a(1)=1`
-/

namespace A332023.P2627816438316411955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n + 1 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat + (n + 1)

end

end A332023.P2627816438316411955

namespace A332023

/-- `a(n+1-(comp[∑[n]]-n))+n+1` -/
def P2627816438316411955.Spec : Prop :=
  ∀ n, (P2627816438316411955.a n : ℤ) = A332023 n

end A332023

/-! ## A332023.P16819464275074282229

`∑[n-C(comp[∑[n-1]]-n, 2)+1]-1`
-/

namespace A332023.P16819464275074282229
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A332023.P16819464275074282229

namespace A332023

/-- `∑[n-C(comp[∑[n-1]]-n, 2)+1]-1` -/
def P16819464275074282229.Spec : Prop :=
  ∀ n, P16819464275074282229.a n = A332023 n

end A332023

/-!
# A332024: Expansion of e.g.f. Product_{k>=1} (1 + x^k/(k!*(1 - x)^k)).

The programs for A332024, there is no canonical definition to state claims against.
-/

/-! ## A332024.P5948181489150822886

`A008621(Δ[A007178(n+1)])`
-/

namespace A332024.P5948181489150822886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A332024.P5948181489150822886

/-! ## A332024.P12870808126782973129

`A008624(Δ[A007178(n+1)])`
-/

namespace A332024.P12870808126782973129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f1 (n + 1) - f1 n).toNat

end

end A332024.P12870808126782973129

/-!
# A332025: Sum of the lengths of the longest runs of 0, 1, and 2 in the ternary expression of n.

The programs for A332025, there is no canonical definition to state claims against.
-/

/-! ## A332025.P1316298260804164802

`A330166(n)+A330167(n)+A330168(n)`
-/

namespace A332025.P1316298260804164802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 n + A330167 n + A330168 n

end

end A332025.P1316298260804164802

/-! ## A332025.P4412398836296932736

`A043543(A050026(n+1)*A331703(n+1))`
-/

namespace A332025.P4412398836296932736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043543 (A050026 (n + 1) * A331703 (n + 1)).toNat

end

end A332025.P4412398836296932736

/-! ## A332025.P16280240920135193940

`A060500(A068808(n+1)%A004396(A075892(n+2)))`
-/

namespace A332025.P16280240920135193940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (Int.tmod (A068808 (n + 1)) (A004396 (A075892 (n + 2)).toNat)).toNat

end

end A332025.P16280240920135193940

/-!
# A332026: Savannah problem: number of new possibilities after n weeks.

The programs for A332026, the canonical program `A332026.P7235378850286809144` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332026 has offset 1).

The definition of A332026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332026.P7235378850286809144

`A002024(n+1)+A010054(n)+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A332026

/-- `A002024(n+1)+A010054(n)+1` -/
def P7235378850286809144.Spec : Prop :=
  ∀ n, P7235378850286809144.a n = A332026 (n + 1)

theorem P7235378850286809144.correct : P7235378850286809144.Spec := by
  intro n
  simp only [A332026, Nat.add_sub_cancel]

end A332026

/-! ## A332026.P10022737078592505565

`char[∑[n]]+comp[∑[n]]-n`
-/

namespace A332026.P10022737078592505565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))

end

end A332026.P10022737078592505565

namespace A332026

/-- `char[∑[n]]+comp[∑[n]]-n` -/
def P10022737078592505565.Spec : Prop :=
  ∀ n, P10022737078592505565.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P1259238541384333085

`ceil(A035214(n)+A131507(n)/2)`
-/

namespace A332026.P1259238541384333085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035214 n : ℚ) + (A131507 n : ℚ) / 2⌉

end

end A332026.P1259238541384333085

namespace A332026

/-- `ceil(A035214(n)+A131507(n)/2)` -/
def P1259238541384333085.Spec : Prop :=
  ∀ n, P1259238541384333085.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P1315721334658298777

`A000027(A010054(n)+comp[∑[n]]-n)`
-/

namespace A332026.P1315721334658298777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A010054 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A332026.P1315721334658298777

namespace A332026

/-- `A000027(A010054(n)+comp[∑[n]]-n)` -/
def P1315721334658298777.Spec : Prop :=
  ∀ n, P1315721334658298777.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P17570401325167767294

`A181440(A010054(n)+comp[∑[n]]-n)`
-/

namespace A332026.P17570401325167767294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A010054 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A332026.P17570401325167767294

namespace A332026

/-- `A181440(A010054(n)+comp[∑[n]]-n)` -/
def P17570401325167767294.Spec : Prop :=
  ∀ n, P17570401325167767294.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P11936059089876981835

`A003057(∑[char[∑[n]]]²-n+2)`
-/

namespace A332026.P11936059089876981835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A332026.P11936059089876981835

namespace A332026

/-- `A003057(∑[char[∑[n]]]²-n+2)` -/
def P11936059089876981835.Spec : Prop :=
  ∀ n, P11936059089876981835.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P6030752952651161926

`A133196(A004201(A066182(n+1))-n)`
-/

namespace A332026.P6030752952651161926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (A004201 (A066182 (n + 1)).toNat - (n : ℤ)).toNat

end

end A332026.P6030752952651161926

namespace A332026

/-- `A133196(A004201(A066182(n+1))-n)` -/
def P6030752952651161926.Spec : Prop :=
  ∀ n, P6030752952651161926.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P16383669100276223376

`A002024(A133196(n+1)+A066182(n+1))`
-/

namespace A332026.P16383669100276223376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A133196 (n + 1) + A066182 (n + 1)).toNat

end

end A332026.P16383669100276223376

namespace A332026

/-- `A002024(A133196(n+1)+A066182(n+1))` -/
def P16383669100276223376.Spec : Prop :=
  ∀ n, P16383669100276223376.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P5788550252529674836

`A004736(A004736(n+1)+A080036(n)+2)`
-/

namespace A332026.P5788550252529674836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A004736 (n + 1) + (A080036 n + 2)).toNat

end

end A332026.P5788550252529674836

namespace A332026

/-- `A004736(A004736(n+1)+A080036(n)+2)` -/
def P5788550252529674836.Spec : Prop :=
  ∀ n, P5788550252529674836.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P13266844877007899174

`A002024(A253515(2*n+1)+n+2)`
-/

namespace A332026.P13266844877007899174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A253515 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A332026.P13266844877007899174

namespace A332026

/-- `A002024(A253515(2*n+1)+n+2)` -/
def P13266844877007899174.Spec : Prop :=
  ∀ n, P13266844877007899174.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P18246887028066120701

`A256244(A053188(2*n)+2*n+1)`
-/

namespace A332026.P18246887028066120701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (A053188 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A332026.P18246887028066120701

namespace A332026

/-- `A256244(A053188(2*n)+2*n+1)` -/
def P18246887028066120701.Spec : Prop :=
  ∀ n, P18246887028066120701.a n = A332026 (n + 1)

end A332026

/-! ## A332026.P4436692646823093834

`A137734(A189151(n+1))`
-/

namespace A332026.P4436692646823093834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A189151 (n + 1)).toNat

end

end A332026.P4436692646823093834

namespace A332026

/-- `A137734(A189151(n+1))` -/
def P4436692646823093834.Spec : Prop :=
  ∀ n, P4436692646823093834.a n = A332026 (n + 1)

end A332026

/-!
# A332027: Savannah problem: number of distinct possible populations after n weeks, allowing populations after the empty set.

The programs for A332027, the canonical program `A332027.P851931631810263331` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332027 has offset 1).

The definition of A332027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332027.P851931631810263331

`A060432(n+1)+A002024(n+1)+n+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332027

/-- `A060432(n+1)+A002024(n+1)+n+1` -/
def P851931631810263331.Spec : Prop :=
  ∀ n, P851931631810263331.a n = A332027 (n + 1)

theorem P851931631810263331.correct : P851931631810263331.Spec := by
  intro n
  simp only [A332027, Nat.add_sub_cancel]

end A332027

/-! ## A332027.P15251110621807662851

`∑[char[∑[n]]+comp[∑[n]]-n]`
-/

namespace A332027.P15251110621807662851
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332027.P15251110621807662851

namespace A332027

/-- `∑[char[∑[n]]+comp[∑[n]]-n]` -/
def P15251110621807662851.Spec : Prop :=
  ∀ n, P15251110621807662851.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P14644111047936489006

`2*∑[A332026(n+1)/2]`
-/

namespace A332027.P14644111047936489006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332026 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332027.P14644111047936489006

namespace A332027

/-- `2*∑[A332026(n+1)/2]` -/
def P14644111047936489006.Spec : Prop :=
  ∀ n, P14644111047936489006.a n = (A332027 (n + 1) : ℚ)

end A332027

/-! ## A332027.P13758941612585898319

`comp[∑[n]]+∑[A002024(n+1)]`
-/

namespace A332027.P13758941612585898319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A332027.P13758941612585898319

namespace A332027

/-- `comp[∑[n]]+∑[A002024(n+1)]` -/
def P13758941612585898319.Spec : Prop :=
  ∀ n, P13758941612585898319.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P11074211738384461709

`comp[∑[n]]+∑[A003056(n)+1]`
-/

namespace A332027.P11074211738384461709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A332027.P11074211738384461709

namespace A332027

/-- `comp[∑[n]]+∑[A003056(n)+1]` -/
def P11074211738384461709.Spec : Prop :=
  ∀ n, P11074211738384461709.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P6459846875255882621

`comp[∑[n]]+∑[A003057(n+2)-1]`
-/

namespace A332027.P6459846875255882621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A332027.P6459846875255882621

namespace A332027

/-- `comp[∑[n]]+∑[A003057(n+2)-1]` -/
def P6459846875255882621.Spec : Prop :=
  ∀ n, P6459846875255882621.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P8174165388250684245

`A014132(n+1)+∑[round(sqrt(2*(n+1)))]`
-/

namespace A332027.P8174165388250684245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332027.P8174165388250684245

namespace A332027

/-- `A014132(n+1)+∑[round(sqrt(2*(n+1)))]` -/
def P8174165388250684245.Spec : Prop :=
  ∀ n, P8174165388250684245.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P5087483225083944280

`∑[round(sqrt(2*n+1))]+A007401(n+1)+1`
-/

namespace A332027.P5087483225083944280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A007401 (n + 1) + 1)

end

end A332027.P5087483225083944280

namespace A332027

/-- `∑[round(sqrt(2*n+1))]+A007401(n+1)+1` -/
def P5087483225083944280.Spec : Prop :=
  ∀ n, P5087483225083944280.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P932938761239312692

`A060432(n+1)+A014132(n+1)`
-/

namespace A332027.P932938761239312692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + A014132 (n + 1)

end

end A332027.P932938761239312692

namespace A332027

/-- `A060432(n+1)+A014132(n+1)` -/
def P932938761239312692.Spec : Prop :=
  ∀ n, P932938761239312692.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P7823767610646404687

`A332028(n+1)+A087156(n+1)`
-/

namespace A332027.P7823767610646404687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332028 (n + 1) + A087156 (n + 1)

end

end A332027.P7823767610646404687

namespace A332027

/-- `A332028(n+1)+A087156(n+1)` -/
def P7823767610646404687.Spec : Prop :=
  ∀ n, P7823767610646404687.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P4632466228314197514

`A002024(n+1)+∑[A003057(n+2)]`
-/

namespace A332027.P4632466228314197514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332027.P4632466228314197514

namespace A332027

/-- `A002024(n+1)+∑[A003057(n+2)]` -/
def P4632466228314197514.Spec : Prop :=
  ∀ n, P4632466228314197514.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P11908428335654169042

`A002024(n+1)+A329598(n+1)-A000217(n)`
-/

namespace A332027.P11908428335654169042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A329598 (n + 1) - A000217 n)

end

end A332027.P11908428335654169042

namespace A332027

/-- `A002024(n+1)+A329598(n+1)-A000217(n)` -/
def P11908428335654169042.Spec : Prop :=
  ∀ n, P11908428335654169042.a n = A332027 (n + 1)

theorem P11908428335654169042.correct : P11908428335654169042.Spec := by
  intro n
  simp only [A332027, Nat.add_sub_cancel, A332027.P11908428335654169042.a, A332027.P851931631810263331.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A060432, A060432.P9064666053418794146.a, A329598, A329598.P6468722656511072461.a, A000330, A000330.P6574240937923917945.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A332027

/-! ## A332027.P11275721147155966145

`A003057(n+2)+∑[A003057(n+2)/A054977(n)]`
-/

namespace A332027.P11275721147155966145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332027.P11275721147155966145

namespace A332027

/-- `A003057(n+2)+∑[A003057(n+2)/A054977(n)]` -/
def P11275721147155966145.Spec : Prop :=
  ∀ n, P11275721147155966145.a n = (A332027 (n + 1) : ℚ)

end A332027

/-! ## A332027.P15862318150510751205

`A000027(n+1)+A002024(n+1)+∑[A002024(n+1)]`
-/

namespace A332027.P15862318150510751205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A002024 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332027.P15862318150510751205

namespace A332027

/-- `A000027(n+1)+A002024(n+1)+∑[A002024(n+1)]` -/
def P15862318150510751205.Spec : Prop :=
  ∀ n, P15862318150510751205.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P9244231205809997461

`A075349(n+2)+A007401(n+1)`
-/

namespace A332027.P9244231205809997461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075349 (n + 2) + A007401 (n + 1)

end

end A332027.P9244231205809997461

namespace A332027

/-- `A075349(n+2)+A007401(n+1)` -/
def P9244231205809997461.Spec : Prop :=
  ∀ n, P9244231205809997461.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P8760023350888428538

`A060432(n+1)+A075349(n+2)-A006463(n)`
-/

namespace A332027.P8760023350888428538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + (A075349 (n + 2) - A006463 n)

end

end A332027.P8760023350888428538

namespace A332027

/-- `A060432(n+1)+A075349(n+2)-A006463(n)` -/
def P8760023350888428538.Spec : Prop :=
  ∀ n, P8760023350888428538.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P11047737385336836389

`A060432(A014132(n+1))-A057944(n)`
-/

namespace A332027.P11047737385336836389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (A014132 (n + 1)).toNat - A057944 n

end

end A332027.P11047737385336836389

namespace A332027

/-- `A060432(A014132(n+1))-A057944(n)` -/
def P11047737385336836389.Spec : Prop :=
  ∀ n, P11047737385336836389.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P2102400995560935477

`A123578(n+1)+∑[A123578(A080036(n+1))]`
-/

namespace A332027.P2102400995560935477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A080036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332027.P2102400995560935477

namespace A332027

/-- `A123578(n+1)+∑[A123578(A080036(n+1))]` -/
def P2102400995560935477.Spec : Prop :=
  ∀ n, P2102400995560935477.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P13170345719953747180

`A000194(2*n+1)+A075349(n+2)+n`
-/

namespace A332027.P13170345719953747180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n + 1) + (A075349 (n + 2) + (n : ℤ))

end

end A332027.P13170345719953747180

namespace A332027

/-- `A000194(2*n+1)+A075349(n+2)+n` -/
def P13170345719953747180.Spec : Prop :=
  ∀ n, P13170345719953747180.a n = A332027 (n + 1)

end A332027

/-! ## A332027.P1784783741567970129

`lt[A227147(n+1), A227177(n)]`
-/

namespace A332027.P1784783741567970129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332027.P1784783741567970129

namespace A332027

/-- `lt[A227147(n+1), A227177(n)]` -/
def P1784783741567970129.Spec : Prop :=
  ∀ n, (P1784783741567970129.a n : ℤ) = A332027 (n + 1)

end A332027

/-!
# A332028: Savannah problem: number of distinct possible populations after n weeks, not allowing new populations after the empty set.

The programs for A332028, the canonical program `A332028.P14597317824532883109` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332028 has offset 1).

The definition of A332028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332028.P6893186116073380108

`floor(A332027(n+1)-sqrt(∑[2*n]))`
-/

namespace A332028.P6893186116073380108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332027 (n + 1) : ℝ) - Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A332028.P6893186116073380108

namespace A332028

/-- `floor(A332027(n+1)-sqrt(∑[2*n]))` -/
def P6893186116073380108.Spec : Prop :=
  ∀ n, P6893186116073380108.a n = A332028 (n + 1)

end A332028

/-! ## A332028.P1487560383263924704

`A004280(comp[∑[n]]-n)+∑[round(sqrt(2*n))]+1`
-/

namespace A332028.P1487560383263924704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + (∑ j ∈ Finset.range (n + 1), f3 j + 1)

end

end A332028.P1487560383263924704

namespace A332028

/-- `A004280(comp[∑[n]]-n)+∑[round(sqrt(2*n))]+1` -/
def P1487560383263924704.Spec : Prop :=
  ∀ n, P1487560383263924704.a n = A332028 (n + 1)

end A332028

/-! ## A332028.P14597317824532883109

`∑[A332026(A181440(n+1))-1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332028

/-- `∑[A332026(A181440(n+1))-1]` -/
def P14597317824532883109.Spec : Prop :=
  ∀ n, P14597317824532883109.a n = A332028 (n + 1)

theorem P14597317824532883109.correct : P14597317824532883109.Spec := by
  intro n
  simp only [A332028, Nat.add_sub_cancel]

end A332028

/-! ## A332028.P7583561760237905080

`A332027(n+1)-A087156(n+1)`
-/

namespace A332028.P7583561760237905080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332027 (n + 1) - A087156 (n + 1)

end

end A332028.P7583561760237905080

namespace A332028

/-- `A332027(n+1)-A087156(n+1)` -/
def P7583561760237905080.Spec : Prop :=
  ∀ n, P7583561760237905080.a n = A332028 (n + 1)

end A332028

/-! ## A332028.P9082458582735056932

`A254667(A002024(n+1))+∑[A002024(n+1)]`
-/

namespace A332028.P9082458582735056932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A002024 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332028.P9082458582735056932

namespace A332028

/-- `A254667(A002024(n+1))+∑[A002024(n+1)]` -/
def P9082458582735056932.Spec : Prop :=
  ∀ n, P9082458582735056932.a n = A332028 (n + 1)

end A332028

/-! ## A332028.P3503998509273592495

`A060432(n+2)-char[∑[n+2]]`
-/

namespace A332028.P3503998509273592495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332028.P3503998509273592495

namespace A332028

/-- `A060432(n+2)-char[∑[n+2]]` -/
def P3503998509273592495.Spec : Prop :=
  ∀ n, P3503998509273592495.a n = A332028 (n + 1)

end A332028

/-!
# A332031: G.f.: Sum_{k>=1} k! * x^(k^2) / (1 - x^k).

The programs for A332031, there is no canonical definition to state claims against.
-/

/-! ## A332031.P14680137176191349308

`A020639(∑[2^n])^A339846(n+1)`
-/

namespace A332031.P14680137176191349308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A339846 (n + 1) : ℤ)

end

end A332031.P14680137176191349308

/-! ## A332031.P9738855509016968500

`A299377(A020639(n+1))^A339846(n+1)`
-/

namespace A332031.P9738855509016968500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299377 (A020639 (n + 1)).toNat : ℚ) ^ (A339846 (n + 1) : ℤ)

end

end A332031.P9738855509016968500

/-! ## A332031.P12273875781970146943

`gcd(A005940(A005179(n+1)), A355732(n+1))`
-/

namespace A332031.P12273875781970146943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (A005179 (n + 1)).toNat) (A355732 (n + 1))

end

end A332031.P12273875781970146943

/-! ## A332031.P7547156585747174742

`A285189(A280375(n+1))`
-/

namespace A332031.P7547156585747174742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A280375 (n + 1)).toNat

end

end A332031.P7547156585747174742

/-!
# A332032: G.f.: Sum_{k>=1} k! * x^(k^2) / (1 - x^(2*k)).

The programs for A332032, there is no canonical definition to state claims against.
-/

/-! ## A332032.P15871944108010703062

`A001075(n)%A278162(A038519(n))`
-/

namespace A332032.P15871944108010703062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001075 n) (A278162 (A038519 n).toNat)

end

end A332032.P15871944108010703062

/-!
# A332033: Number of compositions (ordered partitions) of n into distinct twin primes.

The programs for A332033, there is no canonical definition to state claims against.
-/

/-! ## A332033.P4655355898006570216

`A331981(n)+A163533(A251762(n))`
-/

namespace A332033.P4655355898006570216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331981 n + A163533 (A251762 n).toNat

end

end A332033.P4655355898006570216

/-! ## A332033.P10334698529004223234

`A331981(n)-A163533(2*A251762(n))`
-/

namespace A332033.P10334698529004223234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331981 n - A163533 (2 * A251762 n).toNat

end

end A332033.P10334698529004223234

/-!
# A332034: Indices of A002182(n) in A055932.

The programs for A332034, there is no canonical definition to state claims against.
-/

/-! ## A332034.P12666976973269111297

`A331119(A306802(n+1))`
-/

namespace A332034.P12666976973269111297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331119 (A306802 (n + 1)).toNat

end

end A332034.P12666976973269111297

/-! ## A332034.P6190760029627193445

`A077462(A002182(n+1))`
-/

namespace A332034.P6190760029627193445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A002182 (n + 1)).toNat

end

end A332034.P6190760029627193445

/-! ## A332034.P8162333385355311469

`A077462(sqrt(A046952(n+1)))`
-/

namespace A332034.P8162333385355311469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (SequenceMachineLib.roundAway (Real.sqrt (A046952 (n + 1) : ℝ))).toNat

end

end A332034.P8162333385355311469

/-! ## A332034.P10142925069564278566

`A077462(A135372(n+1)-1)`
-/

namespace A332034.P10142925069564278566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A135372 (n + 1) - 1).toNat

end

end A332034.P10142925069564278566

/-!
# A332035: Indices of A004394(n) in A055932.

The programs for A332035, there is no canonical definition to state claims against.
-/

/-! ## A332035.P9393899945440097733

`A331119(A293635(n+1))`
-/

namespace A332035.P9393899945440097733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331119 (A293635 (n + 1)).toNat

end

end A332035.P9393899945440097733

/-! ## A332035.P4930712358136860009

`A077462(A004394(n+1))`
-/

namespace A332035.P4930712358136860009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A004394 (n + 1)).toNat

end

end A332035.P4930712358136860009

/-! ## A332035.P14325811888931008061

`A077462(A077006(n+1))`
-/

namespace A332035.P14325811888931008061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A077006 (n + 1)).toNat

end

end A332035.P14325811888931008061

/-! ## A332035.P1415683137766259748

`A077462(A166981(n+1))`
-/

namespace A332035.P1415683137766259748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A166981 (n + 1)).toNat

end

end A332035.P1415683137766259748

/-! ## A332035.P16134049860312415800

`A077462(∑{d}[n+1, A008683(#)*A134672((n+1)/#)])`
-/

namespace A332035.P16134049860312415800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (∑ d ∈ Nat.divisors (f1 n), A008683 d * A134672 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A332035.P16134049860312415800

/-!
# A332036: Number of integers whose bi-unitary divisors sum to n.

The programs for A332036, there is no canonical definition to state claims against.
-/

/-! ## A332036.P1633380853212118942

`xor(A102683(A187596(3*n+2)), A332038(n+1))`
-/

namespace A332036.P1633380853212118942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A187596 (3 * n + 2)).toNat) (A332038 (n + 1))

end

end A332036.P1633380853212118942

/-! ## A332036.P2598831186338582967

`and(A128568(n), A332038(n+1))`
-/

namespace A332036.P2598831186338582967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128568 n) (A332038 (n + 1))

end

end A332036.P2598831186338582967

/-! ## A332036.P14774407350149646677

`A332038(n+1)*A360068(A360068(n))`
-/

namespace A332036.P14774407350149646677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332038 (n + 1) * A360068 (A360068 n).toNat

end

end A332036.P14774407350149646677

/-! ## A332036.P592341453628373190

`A332038(n+1)-A121373(A084920(n+1))`
-/

namespace A332036.P592341453628373190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332038 (n + 1) - A121373 (A084920 (n + 1)).toNat

end

end A332036.P592341453628373190

/-! ## A332036.P10709559913577415349

`C(A332038(n+1), A333254(A002182(n+1)))`
-/

namespace A332036.P10709559913577415349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332038 (n + 1)).toNat (A333254 (A002182 (n + 1)).toNat).toNat

end

end A332036.P10709559913577415349

/-!
# A332037: Indices of records in A332036.

The programs for A332037, there is no canonical definition to state claims against.
-/

/-! ## A332037.P12085404924092996731

`A332039(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A332037.P12085404924092996731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332039 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A332037.P12085404924092996731

/-! ## A332037.P7092296808316335977

`A332039(A082743(n))`
-/

namespace A332037.P7092296808316335977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332039 (A082743 n).toNat

end

end A332037.P7092296808316335977

/-! ## A332037.P283290042421653453

`A332039(A381225(n))`
-/

namespace A332037.P283290042421653453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332039 (A381225 n).toNat

end

end A332037.P283290042421653453

/-! ## A332037.P9604417406584734222

`A332039(A001104(n+1))`
-/

namespace A332037.P9604417406584734222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332039 (A001104 (n + 1)).toNat

end

end A332037.P9604417406584734222

/-! ## A332037.P17832977620137979410

`A332039(A002998(n+1))`
-/

namespace A332037.P17832977620137979410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332039 (A002998 (n + 1)).toNat

end

end A332037.P17832977620137979410

/-!
# A332038: Number of integers whose infinitary divisors sum to n.

The programs for A332038, there is no canonical definition to state claims against.
-/

/-! ## A332038.P16694742020780665206

`A332036(n+1)^A332003(A332007(3*(n+1)))`
-/

namespace A332038.P16694742020780665206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332036 (n + 1) : ℚ) ^ (A332003 (A332007 (3 * (n + 1))).toNat : ℤ)

end

end A332038.P16694742020780665206

/-!
# A332039: Indices of records in A332038.

The programs for A332039, there is no canonical definition to state claims against.
-/

/-! ## A332039.P1029204927401403878

`filter[A332037(n+1), A266978(#)]`
-/

namespace A332039.P1029204927401403878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266978 (f1 j).toNat = 1) n)

end

end A332039.P1029204927401403878

/-! ## A332039.P6803827786746919801

`record[A332037(n+1)%A331998(3*(n+1))]`
-/

namespace A332039.P6803827786746919801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332037 (n + 1)) (A331998 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332039.P6803827786746919801

/-! ## A332039.P6994668388067253094

`A332037(∑[A332016(2*(n+2))!])`
-/

namespace A332039.P6994668388067253094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A332016 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332037 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332039.P6994668388067253094

/-! ## A332039.P8247264131626077900

`A332037(A106000(n+1))`
-/

namespace A332039.P8247264131626077900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332037 (A106000 (n + 1)).toNat

end

end A332039.P8247264131626077900

/-! ## A332039.P721580344730343637

`A332037(A064704(n+1))`
-/

namespace A332039.P721580344730343637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332037 (A064704 (n + 1)).toNat

end

end A332039.P721580344730343637

/-!
# A332040: Number of integers whose exponential divisors sum to n.

The programs for A332040, there is no canonical definition to state claims against.
-/

/-! ## A332040.P5125623776014719510

`A175083(n+1)-A049759(A211882(n+1))`
-/

namespace A332040.P5125623776014719510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175083 (n + 1) - A049759 (A211882 (n + 1)).toNat

end

end A332040.P5125623776014719510

/-! ## A332040.P8151269193971962298

`A175083(A000190(n+1)*A264859(n+1))`
-/

namespace A332040.P8151269193971962298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175083 (A000190 (n + 1) * A264859 (n + 1)).toNat

end

end A332040.P8151269193971962298

/-! ## A332040.P7562302604829078956

`C(A050326(n+1), A050327(A058142(n+1)))`
-/

namespace A332040.P7562302604829078956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050326 (n + 1)).toNat (A050327 (A058142 (n + 1)).toNat).toNat

end

end A332040.P7562302604829078956

/-! ## A332040.P12723091919189134424

`A003849(2*(n+2))+A003849(A093832(2*(n+2)))`
-/

namespace A332040.P12723091919189134424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * (n + 2)) + A003849 (A093832 (2 * (n + 2))).toNat

end

end A332040.P12723091919189134424

/-! ## A332040.P9044142924442189590

`A050326(gcd(A101318(n+1), A261424(n)))`
-/

namespace A332040.P9044142924442189590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (Int.gcd (A101318 (n + 1)) (A261424 n))

end

end A332040.P9044142924442189590

/-!
# A332041: Indices of records in A332040.

The programs for A332041, there is no canonical definition to state claims against.
-/

/-! ## A332041.P8852484917673621412

`record[A333936(A180514(n+1))]`
-/

namespace A332041.P8852484917673621412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333936 (A180514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332041.P8852484917673621412

/-! ## A332041.P10734072723118551950

`A358137(∑{d}[A276024(n+1), #])`
-/

namespace A332041.P10734072723118551950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A332041.P10734072723118551950

/-!
# A332042: Number of integers whose Dedekind psi function (A001615) values are n.

The programs for A332042, there is no canonical definition to state claims against.
-/

/-! ## A332042.P1462468437902215111

`A000161(A051890(3*n+4)-A032741(n))`
-/

namespace A332042.P1462468437902215111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A051890 (3 * n + 4) - A032741 n).toNat

end

end A332042.P1462468437902215111

/-! ## A332042.P4556172035060926681

`A001222(gcd(A007920(n), A321643(n)))`
-/

namespace A332042.P4556172035060926681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A007920 n) (A321643 n))

end

end A332042.P4556172035060926681

/-! ## A332042.P5760584291978260394

`A293449(A000079(n))+A094518(n+1)`
-/

namespace A332042.P5760584291978260394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293449 (A000079 n).toNat + A094518 (n + 1)

end

end A332042.P5760584291978260394

/-! ## A332042.P11454080654440237121

`A107456(A036561(n+1))-A072491(n)`
-/

namespace A332042.P11454080654440237121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107456 ((A036561 (n + 1)).toNat + 13) - A072491 n

end

end A332042.P11454080654440237121

/-! ## A332042.P9956402438808945042

`A001222(gcd(n, A007918(n))^A126347(n))`
-/

namespace A332042.P9956402438808945042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((Int.gcd (n : ℤ) (A007918 n) : ℚ) ^ (A126347 n : ℤ))).toNat

end

end A332042.P9956402438808945042

/-!
# A332043: Indices of records in A332042.

The programs for A332043, there is no canonical definition to state claims against.
-/

/-! ## A332043.P16591442862655804687

`A340512(A381070(n+1))`
-/

namespace A332043.P16591442862655804687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (A381070 (n + 1)).toNat

end

end A332043.P16591442862655804687

/-! ## A332043.P2324548307102739604

`record[A005875(∑[A055363(3*n+5)])]`
-/

namespace A332043.P2324548307102739604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332043.P2324548307102739604

/-! ## A332043.P3547201705433941311

`A014452(A281199(n+1))`
-/

namespace A332043.P3547201705433941311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 (A281199 (n + 1)).toNat

end

end A332043.P3547201705433941311

/-! ## A332043.P16501469975382738788

`∩[A124509(n+1), A340014(n+1)]`
-/

namespace A332043.P16501469975382738788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332043.P16501469975382738788

/-!
# A332044: a(n) is the length of the shortest circuit that visits every edge of an undirected n X n grid graph.

The programs for A332044, the canonical program `A332044.P1289934265342910572` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332044 has offset 2).

The definition of A332044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332044.P11478708150170974617

`2*(n+2)²-4+2*(n+2)%2`
-/

namespace A332044.P11478708150170974617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) ^ 2 : ℤ) - 4 + ((2 * ((n + 2) % 2) : ℕ) : ℤ)

end

end A332044.P11478708150170974617

namespace A332044

/-- `2*(n+2)²-4+2*(n+2)%2` -/
def P11478708150170974617.Spec : Prop :=
  ∀ n, P11478708150170974617.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P1289934265342910572

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=16, a(2)=28, a(3)=48`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332044

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P1289934265342910572.Spec : Prop :=
  ∀ n, P1289934265342910572.a n = A332044 (n + 2)

theorem P1289934265342910572.correct : P1289934265342910572.Spec := by
  intro n
  simp only [A332044, Nat.add_sub_cancel]

end A332044

/-! ## A332044.P16005984259390459626

`∑[4*or(1, n+1)]`
-/

namespace A332044.P16005984259390459626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P16005984259390459626

namespace A332044

/-- `∑[4*or(1, n+1)]` -/
def P16005984259390459626.Spec : Prop :=
  ∀ n, (P16005984259390459626.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P8168415396383108932

`∑[lcm(4, or(1, n+1))]`
-/

namespace A332044.P8168415396383108932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.lor 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P8168415396383108932

namespace A332044

/-- `∑[lcm(4, or(1, n+1))]` -/
def P8168415396383108932.Spec : Prop :=
  ∀ n, (P8168415396383108932.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P4700646313211350384

`∑[a(n-2)+8]` with `a(0)=4, a(1)=12`
-/

namespace A332044.P4700646313211350384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 12] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P4700646313211350384

namespace A332044

/-- `∑[a(n-2)+8]` -/
def P4700646313211350384.Spec : Prop :=
  ∀ n, (P4700646313211350384.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P5151984834496736274

`∑[4*(2-or(1, -n))]`
-/

namespace A332044.P5151984834496736274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 - Int.lor 1 (-(n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P5151984834496736274

namespace A332044

/-- `∑[4*(2-or(1, -n))]` -/
def P5151984834496736274.Spec : Prop :=
  ∀ n, P5151984834496736274.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P15915564873021141901

`4*floor(∑[3/2+n])`
-/

namespace A332044.P15915564873021141901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A332044.P15915564873021141901

namespace A332044

/-- `4*floor(∑[3/2+n])` -/
def P15915564873021141901.Spec : Prop :=
  ∀ n, P15915564873021141901.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P14061723326053814178

`∑[∑[8*n%2]+4]`
-/

namespace A332044.P14061723326053814178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P14061723326053814178

namespace A332044

/-- `∑[∑[8*n%2]+4]` -/
def P14061723326053814178.Spec : Prop :=
  ∀ n, (P14061723326053814178.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P16553166624157236972

`∑[∑[8*and(1, n)]+4]`
-/

namespace A332044.P16553166624157236972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P16553166624157236972

namespace A332044

/-- `∑[∑[8*and(1, n)]+4]` -/
def P16553166624157236972.Spec : Prop :=
  ∀ n, (P16553166624157236972.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P13269464127715718672

`∑[∑[8-a(n-1)]]` with `a(0)=4, a(1)=8`
-/

namespace A332044.P13269464127715718672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P13269464127715718672

namespace A332044

/-- `∑[∑[8-a(n-1)]]` -/
def P13269464127715718672.Spec : Prop :=
  ∀ n, P13269464127715718672.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P17482778827089985474

`∑[2*(xor(1, n+3)+n)]`
-/

namespace A332044.P17482778827089985474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor 1 (n + 3) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P17482778827089985474

namespace A332044

/-- `∑[2*(xor(1, n+3)+n)]` -/
def P17482778827089985474.Spec : Prop :=
  ∀ n, (P17482778827089985474.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P13032724625527241133

`∑[or(4, (n+2)²-n²)]`
-/

namespace A332044.P13032724625527241133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (((n + 2) ^ 2 : ℤ) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P13032724625527241133

namespace A332044

/-- `∑[or(4, (n+2)²-n²)]` -/
def P13032724625527241133.Spec : Prop :=
  ∀ n, P13032724625527241133.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P18282283095745068050

`2*or(1, (n+2)²-3)+2`
-/

namespace A332044.P18282283095745068050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (((n + 2) ^ 2 : ℤ) - 3) + 2

end

end A332044.P18282283095745068050

namespace A332044

/-- `2*or(1, (n+2)²-3)+2` -/
def P18282283095745068050.Spec : Prop :=
  ∀ n, P18282283095745068050.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P7713677676504558435

`a(n-2)+8*(n+1)` with `a(0)=4, a(1)=16`
-/

namespace A332044.P7713677676504558435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 16] fun n a =>
  a (n - 2) + 8 * (n + 1)

end

end A332044.P7713677676504558435

namespace A332044

/-- `a(n-2)+8*(n+1)` -/
def P7713677676504558435.Spec : Prop :=
  ∀ n, (P7713677676504558435.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P12050968170372103359

`and(2*(n+1)*(n+3), -4)`
-/

namespace A332044.P12050968170372103359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (n + 1) * (n + 3) : ℤ) (-4)

end

end A332044.P12050968170372103359

namespace A332044

/-- `and(2*(n+1)*(n+3), -4)` -/
def P12050968170372103359.Spec : Prop :=
  ∀ n, P12050968170372103359.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P18028210200073304998

`∑[4*(gcd(n+1, n-1)+n)]`
-/

namespace A332044.P18028210200073304998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P18028210200073304998

namespace A332044

/-- `∑[4*(gcd(n+1, n-1)+n)]` -/
def P18028210200073304998.Spec : Prop :=
  ∀ n, (P18028210200073304998.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P409944431646288142

`xor(1, (2*n+1)*(n+3))+n+2`
-/

namespace A332044.P409944431646288142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n + 1) * (n + 3)) + (n + 2)

end

end A332044.P409944431646288142

namespace A332044

/-- `xor(1, (2*n+1)*(n+3))+n+2` -/
def P409944431646288142.Spec : Prop :=
  ∀ n, (P409944431646288142.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P17031886029140358936

`2*and(1, n)+(2*n+1)*(n+3)+n+1`
-/

namespace A332044.P17031886029140358936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + ((2 * n + 1) * (n + 3) + (n + 1))

end

end A332044.P17031886029140358936

namespace A332044

/-- `2*and(1, n)+(2*n+1)*(n+3)+n+1` -/
def P17031886029140358936.Spec : Prop :=
  ∀ n, (P17031886029140358936.a n : ℤ) = A332044 (n + 2)

end A332044

/-! ## A332044.P6930703774901949441

`∑[A168378(n+1)+1]`
-/

namespace A332044.P6930703774901949441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168378 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P6930703774901949441

namespace A332044

/-- `∑[A168378(n+1)+1]` -/
def P6930703774901949441.Spec : Prop :=
  ∀ n, P6930703774901949441.a n = A332044 (n + 2)

end A332044

/-! ## A332044.P1019797964991611653

`∑[A168381(n+1)+2]`
-/

namespace A332044.P1019797964991611653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168381 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332044.P1019797964991611653

namespace A332044

/-- `∑[A168381(n+1)+2]` -/
def P1019797964991611653.Spec : Prop :=
  ∀ n, P1019797964991611653.a n = A332044 (n + 2)

end A332044

/-!
# A332045: Numbers k such that ceiling(Pi/arctan(1/k)) = ceiling(k*Pi)+1.

The programs for A332045, there is no canonical definition to state claims against.
-/

/-! ## A332045.P7046223155808738902

`filter[A265739(n+1), A191153(#)]`
-/

namespace A332045.P7046223155808738902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A191153 (f1 j).toNat = 1) n)

end

end A332045.P7046223155808738902

/-! ## A332045.P9623881594662878944

`filter[A265739(n+3), A191156(#)]`
-/

namespace A332045.P9623881594662878944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265739 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A191156 (f1 j).toNat = 1) n)

end

end A332045.P9623881594662878944

/-! ## A332045.P5688966245013876047

`filter[A265739(n+3), A191162(#)]`
-/

namespace A332045.P5688966245013876047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265739 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A191162 (f1 j).toNat = 1) n)

end

end A332045.P5688966245013876047

/-! ## A332045.P10346454846135017022

`eq[A171950(n+1), A336017(n)]`
-/

namespace A332045.P10346454846135017022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332045.P10346454846135017022

/-! ## A332045.P16396058390816081489

`∩[A047984(n+1), A265739(n+1)]`
-/

namespace A332045.P16396058390816081489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332045.P16396058390816081489

/-!
# A332046: a(n) is the smallest positive integer such that there exist exactly n positive integers less than a(n) whose digital sum in base 10 is equal to the digital sum of a(n).

The programs for A332046, there is no canonical definition to state claims against.
-/

/-! ## A332046.P13474550086647705026

`∑[A103708(∑[A139904(3*n+1)])]`
-/

namespace A332046.P13474550086647705026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139904 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103708 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332046.P13474550086647705026

/-! ## A332046.P11596932411493151376

`lt[n, 11*A062329(n)]-char[9]`
-/

namespace A332046.P11596932411493151376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A062329 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332046.P11596932411493151376

/-! ## A332046.P15152950356882651404

`and(-2, eq[n, A061882(floor(n/10))])`
-/

namespace A332046.P15152950356882651404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A332046.P15152950356882651404

/-! ## A332046.P828839633192074345

`A109597(A087027(n))`
-/

namespace A332046.P828839633192074345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109597 (A087027 n).toNat

end

end A332046.P828839633192074345

/-!
# A332048: a(n) = n! * [x^n] 1 / (1 - LambertW(x))^n.

The programs for A332048, there is no canonical definition to state claims against.
-/

/-! ## A332048.P1594602502682804663

`A134954(n)+A072114(A002110(n))`
-/

namespace A332048.P1594602502682804663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134954 n + A072114 (A002110 n).toNat

end

end A332048.P1594602502682804663

/-! ## A332048.P6507769179568630419

`A289439(A001147(n)+A000557(n))`
-/

namespace A332048.P6507769179568630419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A001147 n + A000557 n).toNat

end

end A332048.P6507769179568630419

/-!
# A332049: a(n) = (1/2) * Sum_{d|n, d > 1} d * phi(d).

The programs for A332049, the canonical program `A332049.P9341534089412861099` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332049 has offset 1).

The definition of A332049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332049.P9341534089412861099

`A057661(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A332049

/-- `A057661(n+1)-1` -/
def P9341534089412861099.Spec : Prop :=
  ∀ n, P9341534089412861099.a n = A332049 (n + 1)

theorem P9341534089412861099.correct : P9341534089412861099.Spec := by
  intro n
  simp only [A332049, Nat.add_sub_cancel]

end A332049

/-! ## A332049.P17126321831061697481

`(A057660(n+1)-1)/2`
-/

namespace A332049.P17126321831061697481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057660 (n + 1) - 1 : ℚ) / 2

end

end A332049.P17126321831061697481

namespace A332049

/-- `(A057660(n+1)-1)/2` -/
def P17126321831061697481.Spec : Prop :=
  ∀ n, P17126321831061697481.a n = (A332049 (n + 1) : ℚ)

end A332049

/-! ## A332049.P7246573154911035253

`(A001157((n+1)²)-A000203((n+1)²))/(2*A000203((n+1)²))`
-/

namespace A332049.P7246573154911035253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 ((n + 1) ^ 2) - A000203 ((n + 1) ^ 2) : ℚ) / (2 * A000203 ((n + 1) ^ 2) : ℚ)

end

end A332049.P7246573154911035253

namespace A332049

/-- `(A001157((n+1)²)-A000203((n+1)²))/(2*A000203((n+1)²))` -/
def P7246573154911035253.Spec : Prop :=
  ∀ n, P7246573154911035253.a n = (A332049 (n + 1) : ℚ)

end A332049

/-! ## A332049.P1784451012725602949

`floor(A057660(n+1)/2)`
-/

namespace A332049.P1784451012725602949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057660 (n + 1) : ℚ) / 2⌋

end

end A332049.P1784451012725602949

namespace A332049

/-- `floor(A057660(n+1)/2)` -/
def P1784451012725602949.Spec : Prop :=
  ∀ n, P1784451012725602949.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P17793781409569047557

`A365076(n+1)/2-1`
-/

namespace A332049.P17793781409569047557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365076 (n + 1) : ℚ) / 2 - 1

end

end A332049.P17793781409569047557

namespace A332049

/-- `A365076(n+1)/2-1` -/
def P17793781409569047557.Spec : Prop :=
  ∀ n, P17793781409569047557.a n = (A332049 (n + 1) : ℚ)

end A332049

/-! ## A332049.P11293464010422865509

`∑{d}[n+1, A023896(#)]-1`
-/

namespace A332049.P11293464010422865509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d - 1

end

end A332049.P11293464010422865509

namespace A332049

/-- `∑{d}[n+1, A023896(#)]-1` -/
def P11293464010422865509.Spec : Prop :=
  ∀ n, P11293464010422865509.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P8052810052782380369

`∑[floor(A292302(n+1)/2)]`
-/

namespace A332049.P8052810052782380369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A292302 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332049.P8052810052782380369

namespace A332049

/-- `∑[floor(A292302(n+1)/2)]` -/
def P8052810052782380369.Spec : Prop :=
  ∀ n, P8052810052782380369.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P2436226539381402906

`A051193(n+1)/(n+1)-1`
-/

namespace A332049.P2436226539381402906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051193 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A332049.P2436226539381402906

namespace A332049

/-- `A051193(n+1)/(n+1)-1` -/
def P2436226539381402906.Spec : Prop :=
  ∀ n, P2436226539381402906.a n = (A332049 (n + 1) : ℚ)

end A332049

/-! ## A332049.P6923079992838521647

`(∑{d}[n+1, #*A000010(#)]-1)/2`
-/

namespace A332049.P6923079992838521647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 d - 1 : ℤ) : ℚ) / 2

end

end A332049.P6923079992838521647

namespace A332049

/-- `(∑{d}[n+1, #*A000010(#)]-1)/2` -/
def P6923079992838521647.Spec : Prop :=
  ∀ n, P6923079992838521647.a n = (A332049 (n + 1) : ℚ)

end A332049

/-! ## A332049.P17773543170983173362

`A057660(n+1)%A057661(n+1)`
-/

namespace A332049.P17773543170983173362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057660 (n + 1)) (A057661 (n + 1))

end

end A332049.P17773543170983173362

namespace A332049

/-- `A057660(n+1)%A057661(n+1)` -/
def P17773543170983173362.Spec : Prop :=
  ∀ n, P17773543170983173362.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P15605535292149831300

`∑{d}[n+1, A055615(#)*A069153((n+1)/#)]`
-/

namespace A332049.P15605535292149831300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A069153 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332049.P15605535292149831300

namespace A332049

/-- `∑{d}[n+1, A055615(#)*A069153((n+1)/#)]` -/
def P15605535292149831300.Spec : Prop :=
  ∀ n, P15605535292149831300.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P15766533711366103531

`∑{d}[n+1, A023900(#)*A161680((n+1)/#)]`
-/

namespace A332049.P15766533711366103531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A161680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332049.P15766533711366103531

namespace A332049

/-- `∑{d}[n+1, A023900(#)*A161680((n+1)/#)]` -/
def P15766533711366103531.Spec : Prop :=
  ∀ n, P15766533711366103531.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P1839111205455445189

`∑{d}[n+1, A102309(#)*A130054((n+1)/#)]`
-/

namespace A332049.P1839111205455445189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102309 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332049.P1839111205455445189

namespace A332049

/-- `∑{d}[n+1, A102309(#)*A130054((n+1)/#)]` -/
def P1839111205455445189.Spec : Prop :=
  ∀ n, P1839111205455445189.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P14582998520173462270

`∑{d}[n+1, A000217(#-1)*A023900((n+1)/#)]`
-/

namespace A332049.P14582998520173462270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (d - 1) * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332049.P14582998520173462270

namespace A332049

/-- `∑{d}[n+1, A000217(#-1)*A023900((n+1)/#)]` -/
def P14582998520173462270.Spec : Prop :=
  ∀ n, P14582998520173462270.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P11108900492892677749

`A341316(n+1)/3-1`
-/

namespace A332049.P11108900492892677749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341316 (n + 1) : ℚ) / 3 - 1

end

end A332049.P11108900492892677749

namespace A332049

/-- `A341316(n+1)/3-1` -/
def P11108900492892677749.Spec : Prop :=
  ∀ n, P11108900492892677749.a n = (A332049 (n + 1) : ℚ)

end A332049

/-! ## A332049.P17946240576615915054

`(∑{d}[n+1, A000010(#²)]-1)/2`
-/

namespace A332049.P17946240576615915054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A000010 (d ^ 2) - 1 : ℤ) : ℚ) / 2

end

end A332049.P17946240576615915054

namespace A332049

/-- `(∑{d}[n+1, A000010(#²)]-1)/2` -/
def P17946240576615915054.Spec : Prop :=
  ∀ n, P17946240576615915054.a n = (A332049 (n + 1) : ℚ)

end A332049

/-! ## A332049.P5345670065392459145

`A014682(A057660(n+1)-1)`
-/

namespace A332049.P5345670065392459145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A057660 (n + 1) - 1).toNat

end

end A332049.P5345670065392459145

namespace A332049

/-- `A014682(A057660(n+1)-1)` -/
def P5345670065392459145.Spec : Prop :=
  ∀ n, P5345670065392459145.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P7366690133032531399

`A023443(A057661(n+1))`
-/

namespace A332049.P7366690133032531399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A057661 (n + 1)).toNat

end

end A332049.P7366690133032531399

namespace A332049

/-- `A023443(A057661(n+1))` -/
def P7366690133032531399.Spec : Prop :=
  ∀ n, P7366690133032531399.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P5023156110609799650

`A004524(A057660(n+1))`
-/

namespace A332049.P5023156110609799650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A057660 (n + 1)).toNat

end

end A332049.P5023156110609799650

namespace A332049

/-- `A004524(A057660(n+1))` -/
def P5023156110609799650.Spec : Prop :=
  ∀ n, P5023156110609799650.a n = A332049 (n + 1)

end A332049

/-! ## A332049.P9573539341533959318

`A046667(A365076(n+1))`
-/

namespace A332049.P9573539341533959318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A365076 (n + 1)).toNat

end

end A332049.P9573539341533959318

namespace A332049

/-- `A046667(A365076(n+1))` -/
def P9573539341533959318.Spec : Prop :=
  ∀ n, P9573539341533959318.a n = A332049 (n + 1)

end A332049

/-!
# A332051: Number of compositions of 2n where the multiplicity of the first part equals n.

The programs for A332051, there is no canonical definition to state claims against.
-/

/-! ## A332051.P9852743343288255006

`A370616(n)+A057427(n)`
-/

namespace A332051.P9852743343288255006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370616 n + A057427 n

end

end A332051.P9852743343288255006

/-! ## A332051.P9123757098593806764

`A370616(n)-A057428(n)`
-/

namespace A332051.P9123757098593806764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370616 n - A057428 n

end

end A332051.P9123757098593806764

/-! ## A332051.P17596661937306430595

`A331332(∑[4*n])`
-/

namespace A332051.P17596661937306430595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332051.P17596661937306430595

/-! ## A332051.P11650149420940729500

`abs(A331332(A046092(n))-1)+1`
-/

namespace A332051.P11650149420940729500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331332 (A046092 n).toNat - 1| + 1

end

end A332051.P11650149420940729500

/-! ## A332051.P13944044754672807095

`A331332(A046092(n))%A053369(n)`
-/

namespace A332051.P13944044754672807095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331332 (A046092 n).toNat) (A053369 n)

end

end A332051.P13944044754672807095

/-! ## A332051.P8273735942491755081

`A331332(A046092(n))+A010054(∑[n+5]+6)`
-/

namespace A332051.P8273735942491755081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A046092 n).toNat + A010054 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A332051.P8273735942491755081

/-! ## A332051.P8184080335381823847

`A010054(A000217(n))*A331332(A046092(n))`
-/

namespace A332051.P8184080335381823847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000217 n).toNat * A331332 (A046092 n).toNat

end

end A332051.P8184080335381823847

/-! ## A332051.P13931854152972976638

`A309332(A108769(n+1))*A331332(A046092(n))`
-/

namespace A332051.P13931854152972976638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (A108769 (n + 1)).toNat * A331332 (A046092 n).toNat

end

end A332051.P13931854152972976638

/-!
# A332052: Number of binary words of length n with an even number of occurrences of the subword 0101.

The programs for A332052, there is no canonical definition to state claims against.
-/

/-! ## A332052.P1479322419522208973

`floor(root(A132836(3*(n+1)), 5))`
-/

namespace A332052.P1479322419522208973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132836 (3 * (n + 1)) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A332052.P1479322419522208973

/-! ## A332052.P4421053792067992123

`A055086(Δ[A026119(n)])`
-/

namespace A332052.P4421053792067992123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f1 (n + 1) - f1 n).toNat

end

end A332052.P4421053792067992123

/-! ## A332052.P2568858986829128995

`A284359(n*A128739(n))`
-/

namespace A332052.P2568858986829128995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 ((n : ℤ) * A128739 n).toNat

end

end A332052.P2568858986829128995

/-! ## A332052.P15479871593759061077

`A284359(n*A151417(n))`
-/

namespace A332052.P15479871593759061077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 ((n : ℤ) * A151417 n).toNat

end

end A332052.P15479871593759061077

/-! ## A332052.P18327477051368382708

`Δ[A157271(∑[A164256(n)])]`
-/

namespace A332052.P18327477051368382708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164256 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332052.P18327477051368382708

/-!
# A332053: a(n) is the number of sets modulo n which can be formed by a finite arithmetic sequence, whose complement cannot be formed by a finite arithmetic sequence.

The programs for A332053, there is no canonical definition to state claims against.
-/

/-! ## A332053.P13312696330475694770

`(n+1)*A000999(A275825(n))`
-/

namespace A332053.P13312696330475694770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000999 (A275825 n).toNat

end

end A332053.P13312696330475694770

/-! ## A332053.P4604927030705330546

`(n+1)*A333750(A201204(n))`
-/

namespace A332053.P4604927030705330546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333750 (A201204 n).toNat

end

end A332053.P4604927030705330546

/-! ## A332053.P17133505131139184838

`lcm(record[A269329(n+1)], A073759(n+1))`
-/

namespace A332053.P17133505131139184838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A073759 (n + 1))

end

end A332053.P17133505131139184838

/-! ## A332053.P11938187374112140943

`(1-∑{p}[n+1, C(#, n)]+n)*A064692(A264423(n+1))`
-/

namespace A332053.P11938187374112140943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)) * A064692 (A264423 (n + 1)).toNat

end

end A332053.P11938187374112140943

/-! ## A332053.P16954424471285062826

`A008438(n)*A333806(A000111(n))`
-/

namespace A332053.P16954424471285062826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n * A333806 (A000111 n).toNat

end

end A332053.P16954424471285062826

/-!
# A332054: Tower of 9's modulo n.

The programs for A332054, the canonical program `A332054.P16273750245262081445` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332054 has offset 1).

The definition of A332054 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332054.P16273750245262081445

`(9^a(A000010(n+1)-1))%(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332054

/-- `(9^a(A000010(n+1)-1))%(n+1)` -/
def P16273750245262081445.Spec : Prop :=
  ∀ n, (P16273750245262081445.a n : ℤ) = A332054 (n + 1)

theorem P16273750245262081445.correct : P16273750245262081445.Spec := by
  intro n
  simp only [A332054, Nat.add_sub_cancel]

end A332054

/-! ## A332054.P4786391659614724079

`A129810(n+1)-A178923(n+1)%A094782(n+1)`
-/

namespace A332054.P4786391659614724079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129810 (n + 1) - Int.tmod (A178923 (n + 1)) (A094782 (n + 1))

end

end A332054.P4786391659614724079

namespace A332054

/-- `A129810(n+1)-A178923(n+1)%A094782(n+1)` -/
def P4786391659614724079.Spec : Prop :=
  ∀ n, P4786391659614724079.a n = A332054 (n + 1)

end A332054

/-! ## A332054.P3173610140101835596

`A129810(n+1)%A128371(n+1)`
-/

namespace A332054.P3173610140101835596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129810 (n + 1)) (A128371 (n + 1))

end

end A332054.P3173610140101835596

namespace A332054

/-- `A129810(n+1)%A128371(n+1)` -/
def P3173610140101835596.Spec : Prop :=
  ∀ n, P3173610140101835596.a n = A332054 (n + 1)

end A332054

/-! ## A332054.P13305979627421242675

`and(A129810(n+1), A190274(n+1))`
-/

namespace A332054.P13305979627421242675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129810 (n + 1)) (A190274 (n + 1))

end

end A332054.P13305979627421242675

namespace A332054

/-- `and(A129810(n+1), A190274(n+1))` -/
def P13305979627421242675.Spec : Prop :=
  ∀ n, P13305979627421242675.a n = A332054 (n + 1)

end A332054

/-! ## A332054.P5393839001512115337

`A129810(n+1)+(A129813(n+2)+1)%2`
-/

namespace A332054.P5393839001512115337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129810 (n + 1) + Int.tmod (A129813 (n + 2) + 1) 2

end

end A332054.P5393839001512115337

namespace A332054

/-- `A129810(n+1)+(A129813(n+2)+1)%2` -/
def P5393839001512115337.Spec : Prop :=
  ∀ n, P5393839001512115337.a n = A332054 (n + 1)

end A332054

/-!
# A332055: Tower of 8's modulo n.

The programs for A332055, the canonical program `A332055.P7854422566057198404` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332055 has offset 1).

The definition of A332055 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332055.P7854422566057198404

`(8^(A000010(n+1)+a(A000010(n+1)-1)))%(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332055

/-- `(8^(A000010(n+1)+a(A000010(n+1)-1)))%(n+1)` -/
def P7854422566057198404.Spec : Prop :=
  ∀ n, P7854422566057198404.a n = A332055 (n + 1)

theorem P7854422566057198404.correct : P7854422566057198404.Spec := by
  intro n
  simp only [A332055, Nat.add_sub_cancel]

end A332055

/-! ## A332055.P7285943491567462038

`(A059156(n)^24)%(n+1)`
-/

namespace A332055.P7285943491567462038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059156 n ^ 24) (n + 1 : ℤ)

end

end A332055.P7285943491567462038

namespace A332055

/-- `(A059156(n)^24)%(n+1)` -/
def P7285943491567462038.Spec : Prop :=
  ∀ n, P7285943491567462038.a n = A332055 (n + 1)

end A332055

/-! ## A332055.P16619912332038451235

`(A036287(A141248(n+1))+1)%(n+1)`
-/

namespace A332055.P16619912332038451235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036287 (A141248 (n + 1)).toNat + 1) (n + 1 : ℤ)

end

end A332055.P16619912332038451235

namespace A332055

/-- `(A036287(A141248(n+1))+1)%(n+1)` -/
def P16619912332038451235.Spec : Prop :=
  ∀ n, P16619912332038451235.a n = A332055 (n + 1)

end A332055

/-! ## A332055.P8328673855976342365

`A015943(A049450(3*(n+1))+A000007(n))%(n+1)`
-/

namespace A332055.P8328673855976342365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015943 (A049450 (3 * (n + 1)) + A000007 n).toNat) (n + 1 : ℤ)

end

end A332055.P8328673855976342365

namespace A332055

/-- `A015943(A049450(3*(n+1))+A000007(n))%(n+1)` -/
def P8328673855976342365.Spec : Prop :=
  ∀ n, P8328673855976342365.a n = A332055 (n + 1)

end A332055

/-! ## A332055.P14415814032499351120

`(A151703(n)^12)%A000005(2^n)`
-/

namespace A332055.P14415814032499351120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151703 n ^ 12) (A000005 (2 ^ n))

end

end A332055.P14415814032499351120

namespace A332055

/-- `(A151703(n)^12)%A000005(2^n)` -/
def P14415814032499351120.Spec : Prop :=
  ∀ n, P14415814032499351120.a n = A332055 (n + 1)

end A332055

/-!
# A332056: a(1) = 1, then a(n+1) = a(n) - (-1)^a(n) Sum_{k=1..n} a(k): if a(n) is odd, add the partial sum, else subtract.

The programs for A332056, the canonical program `A332056.P14938066909694897274` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332056 has offset 1).

The definition of A332056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332056.P14938066909694897274

`2-ceil(Δ[n/gcd(3, n+1)])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332056

/-- `2-ceil(Δ[n/gcd(3, n+1)])` -/
def P14938066909694897274.Spec : Prop :=
  ∀ n, P14938066909694897274.a n = A332056 (n + 1)

theorem P14938066909694897274.correct : P14938066909694897274.Spec := by
  intro n
  simp only [A332056, Nat.add_sub_cancel]

end A332056

/-! ## A332056.P5435827636263121303

`ceil(Δ[(n+1)*n/lcm(3, n+1)])`
-/

namespace A332056.P5435827636263121303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) / (Nat.lcm 3 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A332056.P5435827636263121303

namespace A332056

/-- `ceil(Δ[(n+1)*n/lcm(3, n+1)])` -/
def P5435827636263121303.Spec : Prop :=
  ∀ n, P5435827636263121303.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P1474111588613346923

`xor(1, -(a(n-1)+a(n-2)))+3` with `a(0)=1, a(1)=2`
-/

namespace A332056.P1474111588613346923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (-(a (n - 1) + a (n - 2))) + 3

end

end A332056.P1474111588613346923

namespace A332056

/-- `xor(1, -(a(n-1)+a(n-2)))+3` -/
def P1474111588613346923.Spec : Prop :=
  ∀ n, P1474111588613346923.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P5845057329110415832

`-xor(1, a(n-1)-(3-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A332056.P5845057329110415832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  -Int.xor 1 (a (n - 1) - (3 - a (n - 2)))

end

end A332056.P5845057329110415832

namespace A332056

/-- `-xor(1, a(n-1)-(3-a(n-2)))` -/
def P5845057329110415832.Spec : Prop :=
  ∀ n, P5845057329110415832.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P7946820461524260190

`xor(1, 2-(a(n-1)+a(n-2)))+1` with `a(0)=1, a(1)=2`
-/

namespace A332056.P7946820461524260190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (2 - (a (n - 1) + a (n - 2))) + 1

end

end A332056.P7946820461524260190

namespace A332056

/-- `xor(1, 2-(a(n-1)+a(n-2)))+1` -/
def P7946820461524260190.Spec : Prop :=
  ∀ n, P7946820461524260190.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P8321609320980289274

`2-xor(1, a(n-1)-(1-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A332056.P8321609320980289274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - Int.xor 1 (a (n - 1) - (1 - a (n - 2)))

end

end A332056.P8321609320980289274

namespace A332056

/-- `2-xor(1, a(n-1)-(1-a(n-2)))` -/
def P8321609320980289274.Spec : Prop :=
  ∀ n, P8321609320980289274.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P5087959209719089603

`(-a(n-1))^(a(n-2)%a(n-1))+2-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A332056.P5087959209719089603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (-a (n - 1)) ^ (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) + (2 - a (n - 2))

end

end A332056.P5087959209719089603

namespace A332056

/-- `(-a(n-1))^(a(n-2)%a(n-1))+2-a(n-2)` -/
def P5087959209719089603.Spec : Prop :=
  ∀ n, P5087959209719089603.a n = (A332056 (n + 1) : ℚ)

end A332056

/-! ## A332056.P4771229156399023874

`1-A004396(n+1)*A057078(n+1)`
-/

namespace A332056.P4771229156399023874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004396 (n + 1) * A057078 (n + 1)

end

end A332056.P4771229156399023874

namespace A332056

/-- `1-A004396(n+1)*A057078(n+1)` -/
def P4771229156399023874.Spec : Prop :=
  ∀ n, P4771229156399023874.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P3784670843118143368

`A166711(n+1)+A087509(n)-A009947(n)`
-/

namespace A332056.P3784670843118143368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (n + 1) + (A087509 n - A009947 n)

end

end A332056.P3784670843118143368

namespace A332056

/-- `A166711(n+1)+A087509(n)-A009947(n)` -/
def P3784670843118143368.Spec : Prop :=
  ∀ n, P3784670843118143368.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P1091475365803203412

`1-A004523(n+1)*A057078(n+1)`
-/

namespace A332056.P1091475365803203412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004523 (n + 1) * A057078 (n + 1)

end

end A332056.P1091475365803203412

namespace A332056

/-- `1-A004523(n+1)*A057078(n+1)` -/
def P1091475365803203412.Spec : Prop :=
  ∀ n, P1091475365803203412.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P12775411541985301299

`1-A057078(n+1)*A131380(n+1)`
-/

namespace A332056.P12775411541985301299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057078 (n + 1) * A131380 (n + 1)

end

end A332056.P12775411541985301299

namespace A332056

/-- `1-A057078(n+1)*A131380(n+1)` -/
def P12775411541985301299.Spec : Prop :=
  ∀ n, P12775411541985301299.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P5160907817980345268

`A120691(n+1)+A003417(n)*A011655(n+1)`
-/

namespace A332056.P5160907817980345268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 (n + 1) + A003417 n * A011655 (n + 1)

end

end A332056.P5160907817980345268

namespace A332056

/-- `A120691(n+1)+A003417(n)*A011655(n+1)` -/
def P5160907817980345268.Spec : Prop :=
  ∀ n, P5160907817980345268.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P4752926820925059816

`A011655(n+1)+A011655(n)*A120691(n+1)`
-/

namespace A332056.P4752926820925059816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + A011655 n * A120691 (n + 1)

end

end A332056.P4752926820925059816

namespace A332056

/-- `A011655(n+1)+A011655(n)*A120691(n+1)` -/
def P4752926820925059816.Spec : Prop :=
  ∀ n, P4752926820925059816.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P9330537114404000572

`A003417(n+1)+A102899(n+1)-A004396(n+1)`
-/

namespace A332056.P9330537114404000572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (n + 1) + (A102899 (n + 1) - A004396 (n + 1))

end

end A332056.P9330537114404000572

namespace A332056

/-- `A003417(n+1)+A102899(n+1)-A004396(n+1)` -/
def P9330537114404000572.Spec : Prop :=
  ∀ n, P9330537114404000572.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P14923984399163579357

`A110091(n+2)-A110090(n)`
-/

namespace A332056.P14923984399163579357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (n + 2) - A110090 n

end

end A332056.P14923984399163579357

namespace A332056

/-- `A110091(n+2)-A110090(n)` -/
def P14923984399163579357.Spec : Prop :=
  ∀ n, P14923984399163579357.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P4757140872988029833

`Δ[Δ[A000212(n)+A002264(n)²]]`
-/

namespace A332056.P4757140872988029833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + A002264 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332056.P4757140872988029833

namespace A332056

/-- `Δ[Δ[A000212(n)+A002264(n)²]]` -/
def P4757140872988029833.Spec : Prop :=
  ∀ n, P4757140872988029833.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P4654853922659384623

`Δ[A026741(comp[4*n+1])]`
-/

namespace A332056.P4654853922659384623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332056.P4654853922659384623

namespace A332056

/-- `Δ[A026741(comp[4*n+1])]` -/
def P4654853922659384623.Spec : Prop :=
  ∀ n, P4654853922659384623.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P2470294322295470387

`Δ[Δ[A002620(A002264(n)+n)]]`
-/

namespace A332056.P2470294322295470387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002264 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332056.P2470294322295470387

namespace A332056

/-- `Δ[Δ[A002620(A002264(n)+n)]]` -/
def P2470294322295470387.Spec : Prop :=
  ∀ n, P2470294322295470387.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P8103625313623415302

`∑[A076118(2*n)]+1`
-/

namespace A332056.P8103625313623415302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A332056.P8103625313623415302

namespace A332056

/-- `∑[A076118(2*n)]+1` -/
def P8103625313623415302.Spec : Prop :=
  ∀ n, P8103625313623415302.a n = A332056 (n + 1)

end A332056

/-! ## A332056.P11735018275154323835

`A076118(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A332056.P11735018275154323835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076118 (n + n) + a (n - 1)

end

end A332056.P11735018275154323835

namespace A332056

/-- `A076118(n+n)+a(n-1)` -/
def P11735018275154323835.Spec : Prop :=
  ∀ n, P11735018275154323835.a n = A332056 (n + 1)

end A332056

/-!
# A332057: Partial sums (and absolute value of first differences) of A332056: if odd (resp. even) add (resp. subtract) the partial sum to get the next term.

The programs for A332057, the canonical program `A332057.P9666299994285032131` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332057 has offset 1).

The definition of A332057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332057.P9666299994285032131

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=3, a(4)=7, a(5)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332057

/-- `2*a(n-3)-a(n-6)` -/
def P9666299994285032131.Spec : Prop :=
  ∀ n, P9666299994285032131.a n = A332057 (n + 1)

theorem P9666299994285032131.correct : P9666299994285032131.Spec := by
  intro n
  simp only [A332057, Nat.add_sub_cancel]

end A332057

/-! ## A332057.P9278504234752130609

`∑[2-ceil(Δ[n/gcd(3, n+1)])]`
-/

namespace A332057.P9278504234752130609
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332057.P9278504234752130609

namespace A332057

/-- `∑[2-ceil(Δ[n/gcd(3, n+1)])]` -/
def P9278504234752130609.Spec : Prop :=
  ∀ n, P9278504234752130609.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P13275473822760259871

`Δ[∪[(2*n)²+2*n, n²]]`
-/

namespace A332057.P13275473822760259871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A332057.P13275473822760259871

namespace A332057

/-- `Δ[∪[(2*n)²+2*n, n²]]` -/
def P13275473822760259871.Spec : Prop :=
  ∀ n, P13275473822760259871.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P4127791568185232224

`a(n-3)+2*gcd(2, a(n-2))` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A332057.P4127791568185232224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) + 2 * Nat.gcd 2 (a (n - 2))

end

end A332057.P4127791568185232224

namespace A332057

/-- `a(n-3)+2*gcd(2, a(n-2))` -/
def P4127791568185232224.Spec : Prop :=
  ∀ n, (P4127791568185232224.a n : ℤ) = A332057 (n + 1)

end A332057

/-! ## A332057.P11800842609281922286

`a(n-3)+(-1)^a(n-2)+3` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A332057.P11800842609281922286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) + ((-1 : ℝ) ^ (a (n - 2)) + 3)

end

end A332057.P11800842609281922286

namespace A332057

/-- `a(n-3)+(-1)^a(n-2)+3` -/
def P11800842609281922286.Spec : Prop :=
  ∀ n, P11800842609281922286.a n = (A332057 (n + 1) : ℝ)

end A332057

/-! ## A332057.P2059935216180460955

`∑[xor(1, -(a(n-1)+a(n-2)))+3]` with `a(0)=1, a(1)=2`
-/

namespace A332057.P2059935216180460955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Int.xor 1 (-(f1 (n - 1) + f1 (n - 2))) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332057.P2059935216180460955

namespace A332057

/-- `∑[xor(1, -(a(n-1)+a(n-2)))+3]` -/
def P2059935216180460955.Spec : Prop :=
  ∀ n, P2059935216180460955.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P10965562150361348088

`∑[A332056(n+1)]`
-/

namespace A332057.P10965562150361348088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332057.P10965562150361348088

namespace A332057

/-- `∑[A332056(n+1)]` -/
def P10965562150361348088.Spec : Prop :=
  ∀ n, P10965562150361348088.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P12232845685837172618

`lcm(2, comp[A004767(n)]+2)/2`
-/

namespace A332057.P12232845685837172618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) : ℚ) / 2

end

end A332057.P12232845685837172618

namespace A332057

/-- `lcm(2, comp[A004767(n)]+2)/2` -/
def P12232845685837172618.Spec : Prop :=
  ∀ n, P12232845685837172618.a n = (A332057 (n + 1) : ℚ)

end A332057

/-! ## A332057.P10201610257008467839

`A269098(A064429(n))`
-/

namespace A332057.P10201610257008467839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269098 (A064429 n).toNat

end

end A332057.P10201610257008467839

namespace A332057

/-- `A269098(A064429(n))` -/
def P10201610257008467839.Spec : Prop :=
  ∀ n, P10201610257008467839.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P778712213083831682

`A339913(A047410(n+1))`
-/

namespace A332057.P778712213083831682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A047410 (n + 1)).toNat

end

end A332057.P778712213083831682

namespace A332057

/-- `A339913(A047410(n+1))` -/
def P778712213083831682.Spec : Prop :=
  ∀ n, P778712213083831682.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P12137579254132355695

`A226122(n)+A011655(n)`
-/

namespace A332057.P12137579254132355695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226122 n + A011655 n

end

end A332057.P12137579254132355695

namespace A332057

/-- `A226122(n)+A011655(n)` -/
def P12137579254132355695.Spec : Prop :=
  ∀ n, P12137579254132355695.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P11203855626297469071

`A272071(n)+A005131(n)`
-/

namespace A332057.P11203855626297469071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272071 n + A005131 n

end

end A332057.P11203855626297469071

namespace A332057

/-- `A272071(n)+A005131(n)` -/
def P11203855626297469071.Spec : Prop :=
  ∀ n, P11203855626297469071.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P1792900037540278903

`A339913(A047623(n+1)+1)`
-/

namespace A332057.P1792900037540278903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A047623 (n + 1) + 1).toNat

end

end A332057.P1792900037540278903

namespace A332057

/-- `A339913(A047623(n+1)+1)` -/
def P1792900037540278903.Spec : Prop :=
  ∀ n, P1792900037540278903.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P11581717735356928779

`A004396(n)*A131534(n)+1`
-/

namespace A332057.P11581717735356928779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A131534 n + 1

end

end A332057.P11581717735356928779

namespace A332057

/-- `A004396(n)*A131534(n)+1` -/
def P11581717735356928779.Spec : Prop :=
  ∀ n, P11581717735356928779.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P4621445427816610541

`n+1-A130472(A322042(n+1))`
-/

namespace A332057.P4621445427816610541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A130472 (A322042 (n + 1)).toNat

end

end A332057.P4621445427816610541

namespace A332057

/-- `n+1-A130472(A322042(n+1))` -/
def P4621445427816610541.Spec : Prop :=
  ∀ n, P4621445427816610541.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P17646482541708153075

`abs(A099254(2*n+1)-A099254(2*n))`
-/

namespace A332057.P17646482541708153075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099254 (2 * n + 1) - A099254 (2 * n)|

end

end A332057.P17646482541708153075

namespace A332057

/-- `abs(A099254(2*n+1)-A099254(2*n))` -/
def P17646482541708153075.Spec : Prop :=
  ∀ n, P17646482541708153075.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P7498131132302210393

`A004396(n)+A003417(n+1)`
-/

namespace A332057.P7498131132302210393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A003417 (n + 1)

end

end A332057.P7498131132302210393

namespace A332057

/-- `A004396(n)+A003417(n+1)` -/
def P7498131132302210393.Spec : Prop :=
  ∀ n, P7498131132302210393.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P17034019928137816793

`A186731(n+2)+A151842(n)`
-/

namespace A332057.P17034019928137816793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (n + 2) + A151842 n

end

end A332057.P17034019928137816793

namespace A332057

/-- `A186731(n+2)+A151842(n)` -/
def P17034019928137816793.Spec : Prop :=
  ∀ n, P17034019928137816793.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P4026050497871071568

`A001057(A004523(n+1))+n+1`
-/

namespace A332057.P4026050497871071568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004523 (n + 1)).toNat + (n + 1 : ℤ)

end

end A332057.P4026050497871071568

namespace A332057

/-- `A001057(A004523(n+1))+n+1` -/
def P4026050497871071568.Spec : Prop :=
  ∀ n, P4026050497871071568.a n = A332057 (n + 1)

end A332057

/-! ## A332057.P1104016709454248893

`A269098(n+1)-A049347(n+1)²`
-/

namespace A332057.P1104016709454248893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269098 (n + 1) - A049347 (n + 1) ^ 2

end

end A332057.P1104016709454248893

namespace A332057

/-- `A269098(n+1)-A049347(n+1)²` -/
def P1104016709454248893.Spec : Prop :=
  ∀ n, P1104016709454248893.a n = A332057 (n + 1)

end A332057

/-!
# A332059: Absolute value of first differences, or sum of digits of the first n terms of A332058.

The programs for A332059, there is no canonical definition to state claims against.
-/

/-! ## A332059.P7394310980875450031

`abs(Δ[A332058(n+1)])`
-/

namespace A332059.P7394310980875450031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A332059.P7394310980875450031

/-! ## A332059.P10733990542555835356

`∑[∑{digits}[A332058(comp[89*n]), #]]`
-/

namespace A332059.P10733990542555835356
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332058 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332059.P10733990542555835356

/-! ## A332059.P1055141740125705555

`∑[A007953(abs(A332058(n+1)))]`
-/

namespace A332059.P1055141740125705555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 |A332058 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332059.P1055141740125705555

/-! ## A332059.P1927367214827490726

`∑{d}[Δ[A332058(n+1)], A000010(#)]`
-/

namespace A332059.P1927367214827490726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332058 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A332059.P1927367214827490726

/-! ## A332059.P17485609523963652167

`∏{d}[Δ[A332058(n+1)], A014963(#)]`
-/

namespace A332059.P17485609523963652167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332058 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A332059.P17485609523963652167

/-!
# A332060: a(n) = 3*a(n-1) + a(n-2) after initial values a(0..5) = (0, 1, 2, 3, 5, 13).

The programs for A332060, the canonical program `A332060.P6416969595891475298` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332060 has offset 0).

The definition of A332060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A332060.P6416969595891475298`, by `A332060.P6416969595891475298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332060.P6416969595891475298

`3*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=13`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332060

/-- `3*a(n-1)+a(n-2)` -/
def P6416969595891475298.Spec : Prop :=
  ∀ n, (P6416969595891475298.a n : ℤ) = A332060 n

theorem P6416969595891475298.correct : P6416969595891475298.Spec := by
  intro n
  simp only [A332060]

end A332060

/-! ## A332060.P14172739419229021459

`ogf((-x+x^2+4x^3+6x^4+5x^5)/(-1+3x+x^2))`
-/

namespace A332060.P14172739419229021459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -4, -6, -5] [1, -3, -1] n

end

end A332060.P14172739419229021459

namespace A332060

/-- `ogf((-x+x^2+4x^3+6x^4+5x^5)/(-1+3x+x^2))` -/
def P14172739419229021459.Spec : Prop :=
  ∀ n, P14172739419229021459.a n = A332060 n

end A332060

/-! ## A332060.P5490222527491087643

`a(n-2)+lcm(3, a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=13`
-/

namespace A332060.P5490222527491087643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 13] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1))

end

end A332060.P5490222527491087643

namespace A332060

/-- `a(n-2)+lcm(3, a(n-1))` -/
def P5490222527491087643.Spec : Prop :=
  ∀ n, (P5490222527491087643.a n : ℤ) = A332060 n

end A332060

/-! ## A332060.P3214957624363454781

`A071681(A308381(n)+A019565(n))`
-/

namespace A332060.P3214957624363454781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071681 (A308381 n + A019565 n).toNat

end

end A332060.P3214957624363454781

namespace A332060

/-- `A071681(A308381(n)+A019565(n))` -/
def P3214957624363454781.Spec : Prop :=
  ∀ n, P3214957624363454781.a n = A332060 n

end A332060

/-!
# A332061: Number of iterations of z -> z^2 + 1/4 + 1/n until z >= 2, starting with z = 0.

The programs for A332061, there is no canonical definition to state claims against.
-/

/-! ## A332061.P4772109940850584029

`ceil(∑[ϕ/∑[sqrt(n+1)/(2*n+1)]])`
-/

namespace A332061.P4772109940850584029
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) / (2 * n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio / (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A332061.P4772109940850584029

/-! ## A332061.P20114804421006827

`round(log2(sqrt(A014605(4*n+10))))`
-/

namespace A332061.P20114804421006827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (A014605 (4 * n + 10) : ℝ)))

end

end A332061.P20114804421006827

/-! ## A332061.P804473760446503186

`A073188(A300763(7*(n+1)))`
-/

namespace A332061.P804473760446503186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A300763 (7 * (n + 1))).toNat

end

end A332061.P804473760446503186

/-! ## A332061.P12375524668809547891

`A000196(∑[gcd(20, A118482(n))+6])`
-/

namespace A332061.P12375524668809547891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 20 (A118482 n) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332061.P12375524668809547891

/-! ## A332061.P15322947797616404732

`A067085(A001961(2*n+1)+3)`
-/

namespace A332061.P15322947797616404732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A001961 (2 * n + 1) + 3).toNat

end

end A332061.P15322947797616404732

/-! ## A332061.P12333427802585544721

`A067085(A005206(4*n+1)+3)`
-/

namespace A332061.P12333427802585544721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A005206 (4 * n + 1) + 3).toNat

end

end A332061.P12333427802585544721

/-! ## A332061.P7624183816098842522

`A055086(A003151(n+1)-A180160(n))`
-/

namespace A332061.P7624183816098842522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A003151 (n + 1) - A180160 n).toNat

end

end A332061.P7624183816098842522

/-! ## A332061.P18036556407925703240

`A135664(A017485(n)+2-A057079(n))`
-/

namespace A332061.P18036556407925703240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A017485 n + (2 - A057079 n)).toNat

end

end A332061.P18036556407925703240

/-! ## A332061.P8743626555049146886

`A135664(2-(A057079(n)-A017485(n)))`
-/

namespace A332061.P8743626555049146886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (2 - (A057079 n - A017485 n)).toNat

end

end A332061.P8743626555049146886

/-! ## A332061.P2055604046600898411

`A003056(A000201(3*(n+1))-A003056(2*n))`
-/

namespace A332061.P2055604046600898411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000201 (3 * (n + 1)) - A003056 (2 * n)).toNat

end

end A332061.P2055604046600898411

/-!
# A332062: Number of iterations of z -> z^2 + 1/4 + 1/2^n until z > 2, starting with z = 0.

The programs for A332062, there is no canonical definition to state claims against.
-/

/-! ## A332062.P12712935804089637857

`A038567(A181565(n))-2`
-/

namespace A332062.P12712935804089637857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A181565 n).toNat - 2

end

end A332062.P12712935804089637857

/-! ## A332062.P3164870200579419723

`A038569(A343177(2*n+3))-2`
-/

namespace A332062.P3164870200579419723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A343177 (2 * n + 3)).toNat - 2

end

end A332062.P3164870200579419723

/-! ## A332062.P11326401000796649407

`A094192(2^(n+1)+1)-2`
-/

namespace A332062.P11326401000796649407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (2 ^ (n + 1) + 1) - 2

end

end A332062.P11326401000796649407

/-! ## A332062.P10811425364149754851

`A073188(A088172(n+2))`
-/

namespace A332062.P10811425364149754851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A088172 (n + 2)).toNat

end

end A332062.P10811425364149754851

/-! ## A332062.P10316026359760322689

`A094192(A337482(n+2)+A333943(n+1))`
-/

namespace A332062.P10316026359760322689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A337482 (n + 2) + A333943 (n + 1)).toNat

end

end A332062.P10316026359760322689

/-!
# A332063: a(1) = 1, a(n + 1) = a(n) + Sum_{k = 1..n} floor(log_2(a(k)) + 1): add total number of bits of the terms so far.

The programs for A332063, there is no canonical definition to state claims against.
-/

/-! ## A332063.P722537937485289209

`∑[A004525(A000267(A270205(n)))]`
-/

namespace A332063.P722537937485289209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000267 (A270205 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332063.P722537937485289209

/-! ## A332063.P14777844472841645207

`∑[A000196(A109613(A270205(n)+n))]`
-/

namespace A332063.P14777844472841645207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109613 (A270205 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332063.P14777844472841645207

/-! ## A332063.P11636425049405258286

`∑[A175966(a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A332063.P11636425049405258286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A175966 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332063.P11636425049405258286

/-! ## A332063.P10864297179701022256

`∑[A224778(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A332063.P10864297179701022256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  A224778 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332063.P10864297179701022256

/-!
# A332070: Lexicographically earliest sequence with a(n) odd digits among the first a(n+1) decimal digits, for any n; a(1) = 1, a(2) = 2.

The programs for A332070, there is no canonical definition to state claims against.
-/

/-! ## A332070.P12646355282452189683

`∑[∑[A156960(A293672(n))]]`
-/

namespace A332070.P12646355282452189683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156960 (A293672 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332070.P12646355282452189683

/-! ## A332070.P1067742423700456595

`∑[A069288(A094802(n+1)!)]`
-/

namespace A332070.P1067742423700456595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (Nat.factorial (A094802 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332070.P1067742423700456595

/-! ## A332070.P9633251653341276187

`∑[∑[A071675(A071688(n+1))]]`
-/

namespace A332070.P9633251653341276187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A071688 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332070.P9633251653341276187

/-! ## A332070.P2105308619202018688

`∑[A095048(∏[A143603(n+1)])]`
-/

namespace A332070.P2105308619202018688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332070.P2105308619202018688

/-! ## A332070.P1153911237390974625

`∑[A224076(A062723(n))]`
-/

namespace A332070.P1153911237390974625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224076 (A062723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332070.P1153911237390974625

/-!
# A332071: Lexicographically earliest sequence with a(n) odd terms among the first a(n+1) terms, for any n; a(1) = 1, a(2) = 2.

The programs for A332071, there is no canonical definition to state claims against.
-/

/-! ## A332071.P17193800306241740807

`∑[∑[A280933(A034838(n+1))]]`
-/

namespace A332071.P17193800306241740807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280933 (A034838 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332071.P17193800306241740807

/-! ## A332071.P5683051918851637232

`∑[∑[A280933(A063527(n+1))]]`
-/

namespace A332071.P5683051918851637232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280933 (A063527 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332071.P5683051918851637232

/-! ## A332071.P16554673724782095241

`∑[∑[A127093(A392299(n+1))]]`
-/

namespace A332071.P16554673724782095241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A392299 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332071.P16554673724782095241

/-! ## A332071.P9375336627055548110

`∑[A055642(A130489(n)²)]`
-/

namespace A332071.P9375336627055548110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A130489 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332071.P9375336627055548110

/-! ## A332071.P12295832155246424338

`∑[∑[A089024(A313152(n))]]`
-/

namespace A332071.P12295832155246424338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089024 (A313152 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332071.P12295832155246424338

/-!
# A332072: The Blue Comma sequence: Differences of indices of even terms gives back the sequence; lexicographically earliest such permutation of positive integers.

The programs for A332072, there is no canonical definition to state claims against.
-/

/-! ## A332072.P18362298233838866647

`A273865(n+1)+1`
-/

namespace A332072.P18362298233838866647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273865 (n + 1) + 1

end

end A332072.P18362298233838866647

/-! ## A332072.P4457468135580146195

`A336346(A386557(n+1))`
-/

namespace A332072.P4457468135580146195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336346 (A386557 (n + 1)).toNat

end

end A332072.P4457468135580146195

/-! ## A332072.P13839001234601355095

`A345164(A319005(n+2))+A286294(n)`
-/

namespace A332072.P13839001234601355095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A319005 (n + 2)).toNat + A286294 n

end

end A332072.P13839001234601355095

/-! ## A332072.P2739264685302617189

`A345164(A319005(n+2))+A274650(∑[n])`
-/

namespace A332072.P2739264685302617189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A319005 (n + 2)).toNat + A274650 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332072.P2739264685302617189

/-!
# A332073: The Silver Comma sequence: Differences of indices of prime terms gives back the sequence; lexicographically earliest such permutation of positive integers.

The programs for A332073, there is no canonical definition to state claims against.
-/

/-! ## A332073.P9614353481189406003

`A273859(A281873(n+2))`
-/

namespace A332073.P9614353481189406003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A281873 (n + 2)).toNat

end

end A332073.P9614353481189406003

/-! ## A332073.P18165481647882618656

`A273859(A153679(n+1)+1)`
-/

namespace A332073.P18165481647882618656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A153679 (n + 1) + 1).toNat

end

end A332073.P18165481647882618656

/-! ## A332073.P9713372076896424062

`A273859(A048266(n+3)-1)`
-/

namespace A332073.P9713372076896424062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A048266 (n + 3) - 1).toNat

end

end A332073.P9713372076896424062

/-! ## A332073.P8075649750700975466

`A273859(∑[A062513(n+1)]+1)`
-/

namespace A332073.P8075649750700975466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A332073.P8075649750700975466

/-! ## A332073.P7168357768350605424

`A273859(A208777(∑[n+1]+1))`
-/

namespace A332073.P7168357768350605424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A208777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A332073.P7168357768350605424

/-!
# A332074: Number of trees of height n obtained from those of height n-1 by attaching new nodes to the leaf n as to achieve a total degree of n, using all of its remaining free "bonds" in any possible way.

The programs for A332074, there is no canonical definition to state claims against.
-/

/-! ## A332074.P15548010290789563031

`A092533(A166894(n))`
-/

namespace A332074.P15548010290789563031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A166894 n).toNat

end

end A332074.P15548010290789563031

/-! ## A332074.P7091988030270576822

`A231635(A115683(n!))`
-/

namespace A332074.P7091988030270576822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231635 (A115683 (Nat.factorial n)).toNat

end

end A332074.P7091988030270576822

/-! ## A332074.P1459806736485477936

`A090930(∏[A127601(n)])`
-/

namespace A332074.P1459806736485477936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332074.P1459806736485477936

/-!
# A332075: Odd numbers 2n+1 such that k + 2^m is prime, where k and m are the odd part and 2-valuation, respectively, of 2n.

The programs for A332075, there is no canonical definition to state claims against.
-/

/-! ## A332075.P7142533889965811571

`2*A332076(n+1)+1`
-/

namespace A332075.P7142533889965811571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332076 (n + 1) + 1

end

end A332075.P7142533889965811571

/-! ## A332075.P6496909812628434385

`A005408(A332076(n+1))`
-/

namespace A332075.P6496909812628434385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A332076 (n + 1)).toNat

end

end A332075.P6496909812628434385

/-! ## A332075.P9487785980200888781

`A004273(A332076(n+1)+1)`
-/

namespace A332075.P9487785980200888781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A332076 (n + 1) + 1).toNat

end

end A332075.P9487785980200888781

/-! ## A332075.P12165519214802543406

`A004274(A332076(n+1)+2)`
-/

namespace A332075.P12165519214802543406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A332076 (n + 1) + 2).toNat

end

end A332075.P12165519214802543406

/-! ## A332075.P10123847571343772295

`A004280(A332076(n+1)+2)`
-/

namespace A332075.P10123847571343772295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A332076 (n + 1) + 2).toNat

end

end A332075.P10123847571343772295

/-! ## A332075.P13781014540545573172

`A004442(2*A332076(n+1))`
-/

namespace A332075.P13781014540545573172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A332076 (n + 1)).toNat

end

end A332075.P13781014540545573172

/-! ## A332075.P17770678532951012343

`A109613(2*A332076(n+1))`
-/

namespace A332075.P17770678532951012343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A332076 (n + 1)).toNat

end

end A332075.P17770678532951012343

/-! ## A332075.P6455687945735218839

`A008619(4*A332076(n+1))`
-/

namespace A332075.P6455687945735218839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A332076 (n + 1)).toNat

end

end A332075.P6455687945735218839

/-!
# A332076: Indices n of odd numbers 2n+1 such that k + 2^m is prime, where k and m are the odd part and 2-valuation, respectively, of 2n.

The programs for A332076, there is no canonical definition to state claims against.
-/

/-! ## A332076.P1435734298024418869

`floor(A332075(n+1)/2)`
-/

namespace A332076.P1435734298024418869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332075 (n + 1) : ℚ) / 2⌋

end

end A332076.P1435734298024418869

/-! ## A332076.P17036059404785133600

`(A332075(or(n+1, char[2]))-1)/2`
-/

namespace A332076.P17036059404785133600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332075 (Nat.lor (n + 1) (if ∃ j, f1 j = n then 1 else 0)) - 1 : ℚ) / 2

end

end A332076.P17036059404785133600

/-! ## A332076.P2343736992387184355

`(A332075(n-(1-4/2))-1)/2`
-/

namespace A332076.P2343736992387184355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332075 (SequenceMachineLib.roundAway ((n : ℚ) - (1 - (4 : ℚ) / 2))).toNat - 1 : ℚ) / 2

end

end A332076.P2343736992387184355

/-! ## A332076.P1328930085434893565

`A004524(A332075(n+1))`
-/

namespace A332076.P1328930085434893565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A332075 (n + 1)).toNat

end

end A332076.P1328930085434893565

/-! ## A332076.P13337646706328399485

`A065423(A332075(n+1)+1)`
-/

namespace A332076.P13337646706328399485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A332075 (n + 1) + 1).toNat

end

end A332076.P13337646706328399485

/-! ## A332076.P8369222356862580990

`A001281(A332075(n+1)-1)`
-/

namespace A332076.P8369222356862580990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A332075 (n + 1) - 1).toNat

end

end A332076.P8369222356862580990

/-! ## A332076.P2789200299305223291

`A004525(A332075(n+1)-1)`
-/

namespace A332076.P2789200299305223291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332075 (n + 1) - 1).toNat

end

end A332076.P2789200299305223291

/-! ## A332076.P11518958254211189955

`A006370(A332075(n+1)-1)`
-/

namespace A332076.P11518958254211189955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A332075 (n + 1) - 1).toNat

end

end A332076.P11518958254211189955

/-!
# A332078: Primes p = k*2^m + 1 such that k + 2^m is not prime, where k and m are the odd part and 2-valuation, respectively, of p-1.

The programs for A332078, there is no canonical definition to state claims against.
-/

/-! ## A332078.P16016091931969000062

`p?[C(n, A106405(n+3))]`
-/

namespace A332078.P16016091931969000062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A106405 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A332078.P16016091931969000062

/-! ## A332078.P15663973275154114835

`eq[A194131(A003415(n)), A304438(n+3)]`
-/

namespace A332078.P15663973275154114835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194131 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332078.P15663973275154114835

/-! ## A332078.P13649717410255927428

`lt[A018783(n), A350847(round((n-1)/2)+2)]`
-/

namespace A332078.P13649717410255927428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332078.P13649717410255927428

/-! ## A332078.P15912723272312000804

`A030432(n+4)-A008687(A343867(n))`
-/

namespace A332078.P15912723272312000804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 4) - A008687 (A343867 n).toNat

end

end A332078.P15912723272312000804

/-!
# A332081: Minimum sum of elements of an n X n upper triangular matrix of distinct positive numbers such that no two entries in the same row or column share a digit when the numbers are written in base n+1.

The programs for A332081, there is no canonical definition to state claims against.
-/

/-! ## A332081.P13230389415491063984

`ogf((x+2x^2+4x^3+5x^4+6x^5)/(1-4x+5x^2))`
-/

namespace A332081.P13230389415491063984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 4, 5, 6] [1, -4, 5] n

end

end A332081.P13230389415491063984

/-!
# A332082: a(n) = Sum_{1 <= m <= n} Sum_{1 <= k <= n+1-m} m*R(k,n+1), where R(k,b) = (b^k - 1)/(b - 1) is the base-b repunit of length k.

The programs for A332082, there is no canonical definition to state claims against.
-/

/-! ## A332082.P270561608495079203

`A368535(n+1)-A368534(n+1)`
-/

namespace A332082.P270561608495079203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368535 (n + 1) - A368534 (n + 1)

end

end A332082.P270561608495079203

/-! ## A332082.P14247858438019676229

`xor(∑[A215698(n+1)], A000045(2*n))`
-/

namespace A332082.P14247858438019676229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A000045 (2 * n))

end

end A332082.P14247858438019676229

/-!
# A332085: Number of ordered pairs of divisors of n, (d1,d2), such that d1 is prime and d1 <= d2.

The programs for A332085, there is no canonical definition to state claims against.
-/

/-! ## A332085.P8843818337953014565

`A337320(n+1)+A001221(n+1)`
-/

namespace A332085.P8843818337953014565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337320 (n + 1) + A001221 (n + 1)

end

end A332085.P8843818337953014565

/-! ## A332085.P8149827322890281345

`A248577(n+1)-A337322(n+1)`
-/

namespace A332085.P8149827322890281345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) - A337322 (n + 1)

end

end A332085.P8149827322890281345

/-! ## A332085.P4732733795104152514

`A337320(n+1)+log2(A034444(n+1))`
-/

namespace A332085.P4732733795104152514
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A337320 (n + 1) : ℝ) + Real.logb 2 (A034444 (n + 1) : ℝ)

end

end A332085.P4732733795104152514

/-! ## A332085.P12700778160881869334

`A337320(n+1)+∑{p}[n+1, A001222(#)]`
-/

namespace A332085.P12700778160881869334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337320 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A332085.P12700778160881869334

/-! ## A332085.P351727100526174487

`A337320(n+1)+A001222(∏{p}[n+1, #])`
-/

namespace A332085.P351727100526174487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337320 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332085.P351727100526174487

/-! ## A332085.P2944767539467829431

`A337320(n+1)+∑{p}[n+1, abs(A008683(#))]`
-/

namespace A332085.P2944767539467829431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337320 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), |A008683 p|

end

end A332085.P2944767539467829431

/-! ## A332085.P3980881062883710664

`A337320(n+1)+log2(A000005(∏{p}[n+1, #]))`
-/

namespace A332085.P3980881062883710664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A337320 (n + 1) : ℝ) + Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A332085.P3980881062883710664

/-! ## A332085.P5572358729206108796

`A337320(n+1)+A001222(A007947(n+1))`
-/

namespace A332085.P5572358729206108796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337320 (n + 1) + A001222 (A007947 (n + 1)).toNat

end

end A332085.P5572358729206108796

/-! ## A332085.P15089875709386437447

`A337320(2*A034444(n+1))+A337320(n+1)`
-/

namespace A332085.P15089875709386437447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337320 (2 * A034444 (n + 1)).toNat + A337320 (n + 1)

end

end A332085.P15089875709386437447

/-!
# A332086: a(n) = pi(prime(n) + n) - n, where pi is the prime counting function.

The programs for A332086, the canonical program `A332086.P6466997120533756046` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332086 has offset 1).

The definition of A332086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(A000040(n+1)+n+1)-(n+1)` (program `A332086.P6466997120533756046`, by `A332086.P6466997120533756046.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332086.P14336572187038747837

`A000720(A014688(n+1))-(n+1)`
-/

namespace A332086.P14336572187038747837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014688 (n + 1)).toNat - (n + 1 : ℤ)

end

end A332086.P14336572187038747837

namespace A332086

/-- `A000720(A014688(n+1))-(n+1)` -/
def P14336572187038747837.Spec : Prop :=
  ∀ n, P14336572187038747837.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P6466997120533756046

`A000720(A000040(n+1)+n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A332086

/-- `A000720(A000040(n+1)+n+1)-(n+1)` -/
def P6466997120533756046.Spec : Prop :=
  ∀ n, P6466997120533756046.a n = A332086 (n + 1)

theorem P6466997120533756046.correct : P6466997120533756046.Spec := by
  intro n
  simp only [A332086, Nat.add_sub_cancel]

end A332086

/-! ## A332086.P291849661347849158

`A084294(n+1)-1`
-/

namespace A332086.P291849661347849158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084294 (n + 1) - 1

end

end A332086.P291849661347849158

namespace A332086

/-- `A084294(n+1)-1` -/
def P291849661347849158.Spec : Prop :=
  ∀ n, P291849661347849158.a n = A332086 (n + 1)

theorem P291849661347849158.correct : P291849661347849158.Spec := by
  intro n
  simp only [A332086, Nat.add_sub_cancel, A332086.P291849661347849158.a, A332086.P6466997120533756046.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084294, A084294.P12286291503589741630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332086

/-! ## A332086.P8879263975580565999

`A000720(A095116(n+1)+1)-(n+1)`
-/

namespace A332086.P8879263975580565999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095116 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A332086.P8879263975580565999

namespace A332086

/-- `A000720(A095116(n+1)+1)-(n+1)` -/
def P8879263975580565999.Spec : Prop :=
  ∀ n, P8879263975580565999.a n = A332086 (n + 1)

theorem P8879263975580565999.correct : P8879263975580565999.Spec := by
  intro n
  simp only [A332086, Nat.add_sub_cancel, A332086.P8879263975580565999.a, A332086.P6466997120533756046.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332086

/-! ## A332086.P7744721280568149184

`A000720(A008864(n+1)+n)-(n+1)`
-/

namespace A332086.P7744721280568149184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008864 (n + 1) + (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A332086.P7744721280568149184

namespace A332086

/-- `A000720(A008864(n+1)+n)-(n+1)` -/
def P7744721280568149184.Spec : Prop :=
  ∀ n, P7744721280568149184.a n = A332086 (n + 1)

theorem P7744721280568149184.correct : P7744721280568149184.Spec := by
  intro n
  simp only [A332086, Nat.add_sub_cancel, A332086.P7744721280568149184.a, A332086.P6466997120533756046.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332086

/-! ## A332086.P3795215099213116876

`A000720(A008578(n+2)+n+1)-(n+1)`
-/

namespace A332086.P3795215099213116876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008578 (n + 2) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

end

end A332086.P3795215099213116876

namespace A332086

/-- `A000720(A008578(n+2)+n+1)-(n+1)` -/
def P3795215099213116876.Spec : Prop :=
  ∀ n, P3795215099213116876.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P3989763587432483803

`A000720(p?[A000961(n+1)]+n+1)-(n+1)`
-/

namespace A332086.P3989763587432483803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ) + 1).toNat - (n + 1 : ℤ)

end

end A332086.P3989763587432483803

namespace A332086

/-- `A000720(p?[A000961(n+1)]+n+1)-(n+1)` -/
def P3989763587432483803.Spec : Prop :=
  ∀ n, P3989763587432483803.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P1714649362839112623

`A000720(record[A006530(n+2)]+n+1)-(n+1)`
-/

namespace A332086.P1714649362839112623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

end

end A332086.P1714649362839112623

namespace A332086

/-- `A000720(record[A006530(n+2)]+n+1)-(n+1)` -/
def P1714649362839112623.Spec : Prop :=
  ∀ n, P1714649362839112623.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P13039644562142804305

`A000720(record[A020639(n+2)]+n+1)-(n+1)`
-/

namespace A332086.P13039644562142804305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

end

end A332086.P13039644562142804305

namespace A332086

/-- `A000720(record[A020639(n+2)]+n+1)-(n+1)` -/
def P13039644562142804305.Spec : Prop :=
  ∀ n, P13039644562142804305.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P13936536419055227362

`A337788(A000040(n+1))`
-/

namespace A332086.P13936536419055227362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A000040 (n + 1)).toNat

end

end A332086.P13936536419055227362

namespace A332086

/-- `A337788(A000040(n+1))` -/
def P13936536419055227362.Spec : Prop :=
  ∀ n, P13936536419055227362.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P12849150884123820480

`A337788(A008578(n+2))`
-/

namespace A332086.P12849150884123820480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A008578 (n + 2)).toNat

end

end A332086.P12849150884123820480

namespace A332086

/-- `A337788(A008578(n+2))` -/
def P12849150884123820480.Spec : Prop :=
  ∀ n, P12849150884123820480.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P420896753216495947

`A337788(A116974(n+2))`
-/

namespace A332086.P420896753216495947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A116974 (n + 2)).toNat

end

end A332086.P420896753216495947

namespace A332086

/-- `A337788(A116974(n+2))` -/
def P420896753216495947.Spec : Prop :=
  ∀ n, P420896753216495947.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P11024641627917050328

`A337788(A161428(n+2))`
-/

namespace A332086.P11024641627917050328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A161428 (n + 2)).toNat

end

end A332086.P11024641627917050328

namespace A332086

/-- `A337788(A161428(n+2))` -/
def P11024641627917050328.Spec : Prop :=
  ∀ n, P11024641627917050328.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P8665715998181398597

`A337788(A175787(n+2))`
-/

namespace A332086.P8665715998181398597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A175787 (n + 2)).toNat

end

end A332086.P8665715998181398597

namespace A332086

/-- `A337788(A175787(n+2))` -/
def P8665715998181398597.Spec : Prop :=
  ∀ n, P8665715998181398597.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P9802954687850079615

`A337788(A182986(n+2))`
-/

namespace A332086.P9802954687850079615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A182986 (n + 2)).toNat

end

end A332086.P9802954687850079615

namespace A332086

/-- `A337788(A182986(n+2))` -/
def P9802954687850079615.Spec : Prop :=
  ∀ n, P9802954687850079615.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P8632769748564780322

`A337788(A095116(n+1)-n)`
-/

namespace A332086.P8632769748564780322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A095116 (n + 1) - (n : ℤ)).toNat

end

end A332086.P8632769748564780322

namespace A332086

/-- `A337788(A095116(n+1)-n)` -/
def P8632769748564780322.Spec : Prop :=
  ∀ n, P8632769748564780322.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P11420921467870059612

`A337788(A014688(n+1)-(n+1))`
-/

namespace A332086.P11420921467870059612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A332086.P11420921467870059612

namespace A332086

/-- `A337788(A014688(n+1)-(n+1))` -/
def P11420921467870059612.Spec : Prop :=
  ∀ n, P11420921467870059612.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P7300291013984489023

`A000720(record[A014963(n+2)]+n+1)-(n+1)`
-/

namespace A332086.P7300291013984489023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

end

end A332086.P7300291013984489023

namespace A332086

/-- `A000720(record[A014963(n+2)]+n+1)-(n+1)` -/
def P7300291013984489023.Spec : Prop :=
  ∀ n, P7300291013984489023.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P9119253977040305527

`A033270(A008864(n+1)+n)-n`
-/

namespace A332086.P9119253977040305527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A008864 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A332086.P9119253977040305527

namespace A332086

/-- `A033270(A008864(n+1)+n)-n` -/
def P9119253977040305527.Spec : Prop :=
  ∀ n, P9119253977040305527.a n = A332086 (n + 1)

end A332086

/-! ## A332086.P16059012765229267536

`A337788(A165634(A014688(n+1)))`
-/

namespace A332086.P16059012765229267536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A165634 (A014688 (n + 1)).toNat).toNat

end

end A332086.P16059012765229267536

namespace A332086

/-- `A337788(A165634(A014688(n+1)))` -/
def P16059012765229267536.Spec : Prop :=
  ∀ n, P16059012765229267536.a n = A332086 (n + 1)

end A332086

/-!
# A332087: Diagonals of cellular automata with 4 conditions and 6 possible values.

The programs for A332087, there is no canonical definition to state claims against.
-/

/-! ## A332087.P15877263819516268166

`A289093(n)+A007947(A036937(n+1))`
-/

namespace A332087.P15877263819516268166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289093 n + A007947 (A036937 (n + 1)).toNat

end

end A332087.P15877263819516268166

/-!
# A332088: Primes which yield again a prime when the digits are taken according to the lexicographically first superpermutation of corresponding order and of minimal length.

The programs for A332088, there is no canonical definition to state claims against.
-/

/-! ## A332088.P9938312784009356357

`p?[∑[A335068(A006949(n))]]`
-/

namespace A332088.P9938312784009356357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335068 (A006949 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332088.P9938312784009356357

/-! ## A332088.P18276681573953548026

`p?[record[A305747(A305759(n+1))]]`
-/

namespace A332088.P18276681573953548026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305747 (A305759 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332088.P18276681573953548026

/-! ## A332088.P13760280242669645057

`p?[eq[A000003(n+3), A034444(2*n+3)]]`
-/

namespace A332088.P13760280242669645057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A332088.P13760280242669645057

/-! ## A332088.P15131019205199721212

`p?[lt[A287943(3*n+2), A287932(2*n+5)]]`
-/

namespace A332088.P15131019205199721212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287943 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287932 (2 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A332088.P15131019205199721212

/-! ## A332088.P17603158052278064712

`p?[A308019(n+1)*A308035(A308044(n+2))]`
-/

namespace A332088.P17603158052278064712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308019 (n + 1) * A308035 (A308044 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332088.P17603158052278064712

/-!
# A332089: Irregular table read by rows, where row n lists the lexicographically first superpermutation of minimal length over {1, ..., n}.

The programs for A332089, there is no canonical definition to state claims against.
-/

/-! ## A332089.P6531320265215484187

`A066099((n+1)^floor(∏{e}[n+1, #+1]/2)*A010553(n+1))`
-/

namespace A332089.P6531320265215484187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ : ℤ) * (A010553 (n + 1) : ℚ))).toNat

end

end A332089.P6531320265215484187

/-! ## A332089.P12643929072361453126

`A082068(A192975(n)+6)`
-/

namespace A332089.P12643929072361453126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082068 (A192975 n + 6).toNat

end

end A332089.P12643929072361453126

/-! ## A332089.P5728526559114603546

`∏{e}[A101486(A102624(n+1)), #]`
-/

namespace A332089.P5728526559114603546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101486 (A102624 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A332089.P5728526559114603546

/-! ## A332089.P8111497392591146552

`A341674(lcm(n+1, A007318(n+2)))`
-/

namespace A332089.P8111497392591146552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (Int.lcm (n + 1 : ℤ) (A007318 (n + 2)))

end

end A332089.P8111497392591146552

/-!
# A332094: Numerator of the average distance among first n primes.

The programs for A332094, there is no canonical definition to state claims against.
-/

/-! ## A332094.P13918983758560750948

`A309029(n)%A027578(A321254(n+2))`
-/

namespace A332094.P13918983758560750948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309029 n) (A027578 (A321254 (n + 2)).toNat)

end

end A332094.P13918983758560750948

/-! ## A332094.P5271895305317957398

`A325543(A291401(n))+A291381(2*n+3)`
-/

namespace A332094.P5271895305317957398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325543 (A291401 n).toNat + A291381 (2 * n + 3)

end

end A332094.P5271895305317957398

/-!
# A332095: Numbers m such that 0 <= m*tan(m) < 1, ordered by |m|.

The programs for A332095, there is no canonical definition to state claims against.
-/

/-! ## A332095.P12388582902372116290

`A073097(A000051(n))*A337371(n+1)`
-/

namespace A332095.P12388582902372116290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A000051 n).toNat * A337371 (n + 1)

end

end A332095.P12388582902372116290

/-! ## A332095.P16579368486415436011

`A056594(A000079(n))*A337371(n+1)`
-/

namespace A332095.P16579368486415436011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A000079 n).toNat * A337371 (n + 1)

end

end A332095.P16579368486415436011

/-! ## A332095.P9182612935438754998

`A057078(A277703(n+1))*A337371(n+1)`
-/

namespace A332095.P9182612935438754998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A277703 (n + 1)).toNat * A337371 (n + 1)

end

end A332095.P9182612935438754998

/-! ## A332095.P14205870805175534833

`A337371(n+1)-A034188(A073373(n))`
-/

namespace A332095.P14205870805175534833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337371 (n + 1) - A034188 (A073373 n).toNat

end

end A332095.P14205870805175534833

/-!
# A332097: Maximum of s^n - Sum_{0 < x < s} x^n.

The programs for A332097, there is no canonical definition to state claims against.
-/

/-! ## A332097.P15360127788251295239

`A050292(A032188(n+1)+A001349(n))`
-/

namespace A332097.P15360127788251295239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A032188 (n + 1) + A001349 n).toNat

end

end A332097.P15360127788251295239

/-! ## A332097.P7885873847537309957

`A001761(n)-A022819(A203903(n+1))`
-/

namespace A332097.P7885873847537309957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001761 n - A022819 (A203903 (n + 1)).toNat

end

end A332097.P7885873847537309957

/-!
# A332099: Square array T(n,k) = k^n - Sum_{0 < i < k} e(i)*(k-i)^n where e(i) = 1 if the partial sum up to this term would remain <= k^n, or 0 else; n, k >= 1; read by falling antidiagonals.

The programs for A332099, there is no canonical definition to state claims against.
-/

/-! ## A332099.P2293565935305232648

`A119838(n)%A023980(A248473(n))`
-/

namespace A332099.P2293565935305232648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119838 n) (A023980 (A248473 n).toNat)

end

end A332099.P2293565935305232648

/-! ## A332099.P2747011643129460117

`A124760(A022181(n))+A049403(n+1)`
-/

namespace A332099.P2747011643129460117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A022181 n).toNat + A049403 (n + 1)

end

end A332099.P2747011643129460117

/-! ## A332099.P1996724854680268692

`and(A000032(A157221(n)), A347266(n+1))`
-/

namespace A332099.P1996724854680268692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 (A157221 n).toNat) (A347266 (n + 1))

end

end A332099.P1996724854680268692

/-! ## A332099.P2901149438887993378

`and(A042685(A176791(n)), A347266(n+1))`
-/

namespace A332099.P2901149438887993378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042685 (A176791 n).toNat) (A347266 (n + 1))

end

end A332099.P2901149438887993378

/-! ## A332099.P5627550852618363517

`and(A347266(n+1), A347762(A045912(n)))`
-/

namespace A332099.P5627550852618363517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347266 (n + 1)) (A347762 (A045912 n).toNat)

end

end A332099.P5627550852618363517

