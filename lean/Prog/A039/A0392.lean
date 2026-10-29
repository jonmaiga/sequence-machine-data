import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A039200: Numbers whose base-11 representation has the same number of 6's and 7's.

The programs for A039200, there is no canonical definition to state claims against.
-/

/-! ## A039200.P10184668020060730267

`A000005(A091531(n+1))*A052414(n+1)-n`
-/

namespace A039200.P10184668020060730267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A091531 (n + 1)).toNat * A052414 (n + 1) - (n : ℤ)

end

end A039200.P10184668020060730267

/-! ## A039200.P3407515985591352308

`eq[n+5, A239086(n+5)]`
-/

namespace A039200.P3407515985591352308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039200.P3407515985591352308

/-! ## A039200.P4790180984686627001

`record[A004274(n)%A239086(n+1)]`
-/

namespace A039200.P4790180984686627001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004274 n) (A239086 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039200.P4790180984686627001

/-! ## A039200.P15681875702181112053

`lt[A141552(n+1), exp(A141529(n+4))]`
-/

namespace A039200.P15681875702181112053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141552 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A141529 (n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A039200.P15681875702181112053

/-! ## A039200.P11977917713448397811

`record[A008587(n+4)%A239086(n+5)]`
-/

namespace A039200.P11977917713448397811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008587 (n + 4)) (A239086 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039200.P11977917713448397811

/-! ## A039200.P10486201614738573817

`record[A092535(n)-(A239086(n+1)+A178334(n))]`
-/

namespace A039200.P10486201614738573817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n - (A239086 (n + 1) + A178334 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039200.P10486201614738573817

/-!
# A039201: Numbers whose base-11 representation has the same number of 6's and 8's.

The programs for A039201, there is no canonical definition to state claims against.
-/

/-! ## A039201.P15057960084253745450

`A039205(n+2)-A057427(A328901(n))`
-/

namespace A039201.P15057960084253745450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039205 (n + 2) - A057427 (A328901 n).toNat

end

end A039201.P15057960084253745450

/-! ## A039201.P6802705102050266444

`A039205(n+2)+A033999(A045536(n+1))`
-/

namespace A039201.P6802705102050266444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039205 (n + 2) + A033999 (A045536 (n + 1)).toNat

end

end A039201.P6802705102050266444

/-! ## A039201.P6119853314518440688

`A039205(n+2)-A167964(A004280(n+1))`
-/

namespace A039201.P6119853314518440688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039205 (n + 2) - A167964 (A004280 (n + 1)).toNat

end

end A039201.P6119853314518440688

/-! ## A039201.P2150650003908642415

`A039205(n+2)-A304779(A001248(n+1))`
-/

namespace A039201.P2150650003908642415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039205 (n + 2) - A304779 (A001248 (n + 1)).toNat

end

end A039201.P2150650003908642415

/-! ## A039201.P14717524574682564669

`A039205(n+2)-A242627(A339113(n+1))`
-/

namespace A039201.P14717524574682564669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039205 (n + 2) - A242627 (A339113 (n + 1)).toNat

end

end A039201.P14717524574682564669

/-! ## A039201.P11486086423806735429

`A039205(n+2)-A000034(A074980(n+2))`
-/

namespace A039201.P11486086423806735429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039205 (n + 2) - A000034 (A074980 (n + 2)).toNat

end

end A039201.P11486086423806735429

/-! ## A039201.P3996073526146996882

`eq[A035677(A205701(n+5)), A037913(n+4)]`
-/

namespace A039201.P3996073526146996882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035677 (A205701 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039201.P3996073526146996882

/-! ## A039201.P5499633828979456642

`eq[A072089(n+6)*A107846(n+3), A107846(n+5)]`
-/

namespace A039201.P5499633828979456642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (n + 6) * A107846 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039201.P5499633828979456642

/-! ## A039201.P10349042288240704065

`A039205(n+2)-A167964(2*n+1)`
-/

namespace A039201.P10349042288240704065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039205 (n + 2) - A167964 (2 * n + 1)

end

end A039201.P10349042288240704065

/-!
# A039202: Numbers whose base-11 representation has the same number of 6's and 9's.

The programs for A039202, there is no canonical definition to state claims against.
-/

/-! ## A039202.P5371289055309442549

`A039163(n+2)-A000005(A136435(n+1))`
-/

namespace A039202.P5371289055309442549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 2) - A000005 (A136435 (n + 1)).toNat

end

end A039202.P5371289055309442549

/-! ## A039202.P18415474338124444044

`A039206(n+2)-A001222(A176671(n+1))`
-/

namespace A039202.P18415474338124444044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039206 (n + 2) - A001222 (A176671 (n + 1)).toNat

end

end A039202.P18415474338124444044

/-! ## A039202.P10790742118760044375

`A039163(n+2)-A238745(A031932(n+1))`
-/

namespace A039202.P10790742118760044375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 2) - A238745 (A031932 (n + 1)).toNat

end

end A039202.P10790742118760044375

/-! ## A039202.P15594119756373589733

`A039163(n+2)-A020639(A136435(n+1)+1)`
-/

namespace A039202.P15594119756373589733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 2) - A020639 (A136435 (n + 1) + 1).toNat

end

end A039202.P15594119756373589733

/-! ## A039202.P8543451626528498089

`A039206(n+2)-A316789(A088396(n+2)²+1)`
-/

namespace A039202.P8543451626528498089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039206 (n + 2) - A316789 (A088396 (n + 2) ^ 2 + 1).toNat

end

end A039202.P8543451626528498089

/-! ## A039202.P7496080390317498176

`eq[A072089(n+6)*A107846(n+2), A107846(n+5)]`
-/

namespace A039202.P7496080390317498176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (n + 6) * A107846 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039202.P7496080390317498176

/-! ## A039202.P10227874655763531961

`∑[A277155(A229853(n))]+n`
-/

namespace A039202.P10227874655763531961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277155 (A229853 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A039202.P10227874655763531961

/-! ## A039202.P11009923485879532435

`(A039206(n+2)-1)%A028348(n+1)`
-/

namespace A039202.P11009923485879532435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039206 (n + 2) - 1) (A028348 (n + 1))

end

end A039202.P11009923485879532435

/-!
# A039203: Numbers whose base-11 representation has the same number of 6's and 10's.

The programs for A039203, there is no canonical definition to state claims against.
-/

/-! ## A039203.P15736400489314751792

`A039162(n+1)-A057427(A109226(n+1))`
-/

namespace A039203.P15736400489314751792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039162 (n + 1) - A057427 (A109226 (n + 1)).toNat

end

end A039203.P15736400489314751792

/-! ## A039203.P14483512852973848334

`A039162(n+1)-A000001(A226017(n+1))`
-/

namespace A039203.P14483512852973848334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039162 (n + 1) - A000001 (A226017 (n + 1)).toNat

end

end A039203.P14483512852973848334

/-! ## A039203.P18172945551476583432

`A039162(n+1)-A290107(A193507(n+1))`
-/

namespace A039203.P18172945551476583432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039162 (n + 1) - A290107 (A193507 (n + 1)).toNat

end

end A039203.P18172945551476583432

/-! ## A039203.P9253442231448899481

`A039162(n+1)-A001055(A277878(n+2))`
-/

namespace A039203.P9253442231448899481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039162 (n + 1) - A001055 (A277878 (n + 2)).toNat

end

end A039203.P9253442231448899481

/-! ## A039203.P1243526735797934723

`A039162(n+1)-A057427(A275062(n))`
-/

namespace A039203.P1243526735797934723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039162 (n + 1) - A057427 (A275062 n).toNat

end

end A039203.P1243526735797934723

/-! ## A039203.P12805407561536997098

`A039162(n+1)-A023532(A193507(n+5))`
-/

namespace A039203.P12805407561536997098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039162 (n + 1) - A023532 (A193507 (n + 5)).toNat

end

end A039203.P12805407561536997098

/-!
# A039204: Numbers whose base-11 representation has the same number of 7's and 8's.

The programs for A039204, there is no canonical definition to state claims against.
-/

/-! ## A039204.P7685048356016852195

`A057428(∑[5*n+1])+A039207(n+2)`
-/

namespace A039204.P7685048356016852195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j) + A039207 (n + 2)

end

end A039204.P7685048356016852195

/-! ## A039204.P8629168804673249432

`abs(A057428(A005555(n))+A039207(n+2))`
-/

namespace A039204.P8629168804673249432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 (A005555 n).toNat + A039207 (n + 2)|

end

end A039204.P8629168804673249432

/-! ## A039204.P15121105131827288784

`A039207(n+2)-A295295(A035095(3*(n+1)))`
-/

namespace A039204.P15121105131827288784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039207 (n + 2) - A295295 (A035095 (3 * (n + 1))).toNat

end

end A039204.P15121105131827288784

/-! ## A039204.P7198305558998075163

`A057428(A288100(n+1))+A000027(A039207(n+2))`
-/

namespace A039204.P7198305558998075163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A288100 (n + 1)).toNat + A000027 (A039207 (n + 2)).toNat

end

end A039204.P7198305558998075163

/-! ## A039204.P46618770173390031

`A057428(A094599(n+1))+A000027(A039207(n+2))`
-/

namespace A039204.P46618770173390031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A094599 (n + 1)).toNat + A000027 (A039207 (n + 2)).toNat

end

end A039204.P46618770173390031

/-! ## A039204.P15144348787004552300

`record[A092535(n)-A239086(n+1)]`
-/

namespace A039204.P15144348787004552300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n - A239086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039204.P15144348787004552300

/-! ## A039204.P13713338277517465172

`A057428(A094582(n+1))+A000027(A039207(n+2))`
-/

namespace A039204.P13713338277517465172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A094582 (n + 1)).toNat + A000027 (A039207 (n + 2)).toNat

end

end A039204.P13713338277517465172

/-!
# A039205: Numbers whose base-11 representation has the same number of 7's and 9's.

The programs for A039205, there is no canonical definition to state claims against.
-/

/-! ## A039205.P15960634923271279000

`A153881((Δ[xor(n, 2*n)]+1)²+n)+A039208(n+2)`
-/

namespace A039205.P15960634923271279000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2 + (n : ℤ)).toNat + A039208 (n + 2)

end

end A039205.P15960634923271279000

/-! ## A039205.P4687927218335868873

`A039208(n+2)-A057427(A005891(n))`
-/

namespace A039205.P4687927218335868873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039208 (n + 2) - A057427 (A005891 n).toNat

end

end A039205.P4687927218335868873

/-! ## A039205.P5817692061662456248

`A039208(n+2)-abs(A033999(A301167(n)))`
-/

namespace A039205.P5817692061662456248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039208 (n + 2) - |A033999 (A301167 n).toNat|

end

end A039205.P5817692061662456248

/-! ## A039205.P11930033922956490791

`A153881(A005555(n)+1)+A039208(n+2)`
-/

namespace A039205.P11930033922956490791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A005555 n + 1).toNat + A039208 (n + 2)

end

end A039205.P11930033922956490791

/-! ## A039205.P1594417889177495495

`A153881(A007684(n+1))+A039208(n+2)`
-/

namespace A039205.P1594417889177495495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A007684 (n + 1)).toNat + A039208 (n + 2)

end

end A039205.P1594417889177495495

/-! ## A039205.P14236927342022804557

`A039208(n+2)-(A000007(A301167(n)+1)+1)`
-/

namespace A039205.P14236927342022804557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039208 (n + 2) - (A000007 (A301167 n + 1).toNat + 1)

end

end A039205.P14236927342022804557

/-! ## A039205.P2115303112069039902

`A039208(n+2)%A154685(A005891(n)+1)-1`
-/

namespace A039205.P2115303112069039902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039208 (n + 2)) (A154685 (A005891 n + 1).toNat) - 1

end

end A039205.P2115303112069039902

/-! ## A039205.P12199468206014240677

`A057428(A107975(n+1))+A039208(n+2)`
-/

namespace A039205.P12199468206014240677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A107975 (n + 1)).toNat + A039208 (n + 2)

end

end A039205.P12199468206014240677

/-!
# A039206: Numbers whose base-11 representation has the same number of 7's and 10's.

The programs for A039206, there is no canonical definition to state claims against.
-/

/-! ## A039206.P10763323479224608700

`A039163(n+1)-A151934(n)!`
-/

namespace A039206.P10763323479224608700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1) - (Nat.factorial (A151934 n).toNat : ℤ)

end

end A039206.P10763323479224608700

/-! ## A039206.P7150607624022427572

`(A039163(n+1)-1)%A120836(n+1)`
-/

namespace A039206.P7150607624022427572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039163 (n + 1) - 1) (A120836 (n + 1))

end

end A039206.P7150607624022427572

/-! ## A039206.P17174466125300151612

`lt[A274086(2*n)/2, A347878(n+1)]`
-/

namespace A039206.P17174466125300151612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274086 (2 * n) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A039206.P17174466125300151612

/-! ## A039206.P7205812215515652433

`A039163(n+1)-A033999(A273365(n))`
-/

namespace A039206.P7205812215515652433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1) - A033999 (A273365 n).toNat

end

end A039206.P7205812215515652433

/-! ## A039206.P1449416168728709486

`A039163(n+1)-abs(A330025(A005891(n)))`
-/

namespace A039206.P1449416168728709486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1) - |A330025 (A005891 n).toNat|

end

end A039206.P1449416168728709486

/-! ## A039206.P11157833611769816395

`A039163(n+1)-A083335(A151934(n)²)`
-/

namespace A039206.P11157833611769816395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1) - A083335 (A151934 n ^ 2).toNat

end

end A039206.P11157833611769816395

/-! ## A039206.P4697407221228667848

`A039163(n+1)+A000587(A151934(n)!)`
-/

namespace A039206.P4697407221228667848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1) + A000587 (Nat.factorial (A151934 n).toNat)

end

end A039206.P4697407221228667848

/-! ## A039206.P9862752090851233543

`A260196(A107108(n+1))+A039163(n+1)`
-/

namespace A039206.P9862752090851233543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A107108 (n + 1)).toNat + A039163 (n + 1)

end

end A039206.P9862752090851233543

/-! ## A039206.P14712187418304686433

`A039163(n+1)-A000045(A151934(n)+1)`
-/

namespace A039206.P14712187418304686433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1) - A000045 (A151934 n + 1).toNat

end

end A039206.P14712187418304686433

/-! ## A039206.P10739116929578366342

`A039163(n+1)-A001222(A352443(n+1))`
-/

namespace A039206.P10739116929578366342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039163 (n + 1) - A001222 (A352443 (n + 1)).toNat

end

end A039206.P10739116929578366342

/-!
# A039207: Numbers whose base-11 representation has the same number of 8's and 9's.

The programs for A039207, there is no canonical definition to state claims against.
-/

/-! ## A039207.P18245467968646225322

`lt[A040997(n+1), A113009(A353906(n+2))²]`
-/

namespace A039207.P18245467968646225322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113009 (A353906 (n + 2)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039207.P18245467968646225322

/-! ## A039207.P5380352416850108625

`∑[gcd(floor(n²/3), A003056(2*n²))]`
-/

namespace A039207.P5380352416850108625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n ^ 2 : ℚ) / 3⌋ (A003056 (2 * n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039207.P5380352416850108625

/-! ## A039207.P13427264224673695193

`eq[7, A054055(A044403(n+2))]`
-/

namespace A039207.P13427264224673695193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A044403 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039207.P13427264224673695193

/-! ## A039207.P15092189272251774960

`lt[A054055(A044385(n+2)), 8]`
-/

namespace A039207.P15092189272251774960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A044385 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039207.P15092189272251774960

/-! ## A039207.P2184031338077246124

`lt[9, A262087(A073731(n+3))]`
-/

namespace A039207.P2184031338077246124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A073731 (n + 3 + 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039207.P2184031338077246124

/-! ## A039207.P363564126152553162

`lt[n, A073731(A106612(n+3))]`
-/

namespace A039207.P363564126152553162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A106612 (n + 3)).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039207.P363564126152553162

/-! ## A039207.P791154996439931826

`eq[A265556(A321538(n+2)), A321538(n+3)]`
-/

namespace A039207.P791154996439931826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (A321538 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039207.P791154996439931826

/-! ## A039207.P12501021632743977439

`lt[A262288(A321797(n+3)), A321801(n+2)]`
-/

namespace A039207.P12501021632743977439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 (A321797 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039207.P12501021632743977439

/-! ## A039207.P11486008046150453163

`A017029(n)%A329988(n+1)`
-/

namespace A039207.P11486008046150453163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017029 n) (A329988 (n + 1))

end

end A039207.P11486008046150453163

/-! ## A039207.P3928463344725452174

`eq[n+3, A239086(n+3)]`
-/

namespace A039207.P3928463344725452174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039207.P3928463344725452174

/-!
# A039208: Numbers whose base-11 representation has the same number of 8's and 10's.

The programs for A039208, there is no canonical definition to state claims against.
-/

/-! ## A039208.P3730797113489132508

`lt[1, A002079(A297330(n+2))]`
-/

namespace A039208.P3730797113489132508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002079 (A297330 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039208.P3730797113489132508

/-! ## A039208.P6204948995585682800

`A057428(4*C(n, 2)+1)+A039164(n+1)`
-/

namespace A039208.P6204948995585682800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (4 * Nat.choose n 2 + 1) + A039164 (n + 1)

end

end A039208.P6204948995585682800

/-! ## A039208.P10615330760493272947

`A039164(ceil(A111620(n+1)²/6)+n)-1`
-/

namespace A039208.P10615330760493272947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039164 (⌈(A111620 (n + 1) ^ 2 : ℚ) / 6⌉ + (n : ℤ)).toNat - 1

end

end A039208.P10615330760493272947

/-! ## A039208.P6566828254288169748

`A057428((1-n)²+n²)+A039164(n+1)`
-/

namespace A039208.P6566828254288169748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat + A039164 (n + 1)

end

end A039208.P6566828254288169748

/-! ## A039208.P17237931761039404497

`lt[A332677(n), A061601(A151949(n+2))]`
-/

namespace A039208.P17237931761039404497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A151949 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039208.P17237931761039404497

/-! ## A039208.P791514893143141753

`A039164(n+1)-A054977(∑[A273491(n)])`
-/

namespace A039208.P791514893143141753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039164 (n + 1) - A054977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039208.P791514893143141753

/-! ## A039208.P17029697723703913412

`A118830(A085104(n+1))+A039164(n+1)`
-/

namespace A039208.P17029697723703913412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A085104 (n + 1)).toNat + A039164 (n + 1)

end

end A039208.P17029697723703913412

/-! ## A039208.P9225023320869349958

`A039164(n+1)-A057427(A281793(2*n+1))`
-/

namespace A039208.P9225023320869349958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039164 (n + 1) - A057427 (A281793 (2 * n + 1)).toNat

end

end A039208.P9225023320869349958

/-! ## A039208.P761607309433974724

`lt[A239139(n+3)-3, n+1]`
-/

namespace A039208.P761607309433974724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (n + 3) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039208.P761607309433974724

/-!
# A039209: Numbers whose base-11 representation has the same number of 9's and 10's.

The programs for A039209, there is no canonical definition to state claims against.
-/

/-! ## A039209.P1032124113890011283

`eq[1, A102683(A044803(n+1))]`
-/

namespace A039209.P1032124113890011283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A044803 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039209.P1032124113890011283

/-! ## A039209.P2992382231203404197

`eq[1, A102683(A044804(n+1))]`
-/

namespace A039209.P2992382231203404197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A044804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039209.P2992382231203404197

/-! ## A039209.P5301744437031133630

`eq[1, A102683(A044805(n+1))]`
-/

namespace A039209.P5301744437031133630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A044805 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039209.P5301744437031133630

/-! ## A039209.P4879736072806703348

`eq[1, A102683(A044806(n+1))]`
-/

namespace A039209.P4879736072806703348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A044806 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039209.P4879736072806703348

/-! ## A039209.P7009360141800458332

`eq[1, A102683(A044807(n+1))]`
-/

namespace A039209.P7009360141800458332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A044807 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039209.P7009360141800458332

/-! ## A039209.P6791452776291790828

`eq[n+2, A239086(n+2)]`
-/

namespace A039209.P6791452776291790828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039209.P6791452776291790828

/-!
# A039210: Numbers whose base-12 representation has the same number of 0's and 1's.

The programs for A039210, there is no canonical definition to state claims against.
-/

/-! ## A039210.P1771028511382475515

`∑[A270566(A023934(n)²)]`
-/

namespace A039210.P1771028511382475515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270566 (A023934 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039210.P1771028511382475515

/-! ## A039210.P11713668532575170195

`record[lcm(n+2, A000188(A293985(n)))]`
-/

namespace A039210.P11713668532575170195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A000188 (A293985 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039210.P11713668532575170195

/-! ## A039210.P240944970964698412

`A267447(A127624(n+1))-1+n`
-/

namespace A039210.P240944970964698412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 (A127624 (n + 1)).toNat - 1 + (n : ℤ)

end

end A039210.P240944970964698412

/-! ## A039210.P17620599428276559201

`∑[gcd(A270339(n+2), A294635(n+2))]`
-/

namespace A039210.P17620599428276559201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270339 (n + 2)) (A294635 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039210.P17620599428276559201

/-!
# A039212: Numbers whose base-12 representation has the same number of 0's and 3's.

The programs for A039212, there is no canonical definition to state claims against.
-/

/-! ## A039212.P5250107974188359624

`lt[A033716(n+4), Δ[A116068(n+5)]]`
-/

namespace A039212.P5250107974188359624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116068 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039212.P5250107974188359624

/-! ## A039212.P2561213727442186089

`lt[A004531(3*n), A191372(2*n+3)]`
-/

namespace A039212.P2561213727442186089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191372 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039212.P2561213727442186089

/-! ## A039212.P8044900327683461009

`∑[gcd(A115621(n+1), A340008(2*(n+2)))]`
-/

namespace A039212.P8044900327683461009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115621 (n + 1)) (A340008 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039212.P8044900327683461009

/-! ## A039212.P7721132248277251607

`lt[A328570(∑[2*n²]), A213890(2*n+1)]`
-/

namespace A039212.P7721132248277251607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213890 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A039212.P7721132248277251607

/-! ## A039212.P15971735118058349406

`lt[A014963(∑[13*n-2]+3), A217919(n+1)]`
-/

namespace A039212.P15971735118058349406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A039212.P15971735118058349406

/-!
# A039213: Numbers whose base-12 representation has the same number of 0's and 4's.

The programs for A039213, there is no canonical definition to state claims against.
-/

/-! ## A039213.P14647474596196423557

`lt[A353461(A006002(n+2)), 1]`
-/

namespace A039213.P14647474596196423557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A006002 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039213.P14647474596196423557

/-! ## A039213.P1513854964513982744

`lt[A350872(n+1), atan(A350842(n))]`
-/

namespace A039213.P1513854964513982744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A350842 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A039213.P1513854964513982744

/-! ## A039213.P1176431052017015114

`lt[acot(A246256(n)), A246272(n+1)]`
-/

namespace A039213.P1176431052017015114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A246256 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039213.P1176431052017015114

/-! ## A039213.P17503579448583617188

`lt[acot(A246257(n)), A246272(n+1)]`
-/

namespace A039213.P17503579448583617188
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A246257 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039213.P17503579448583617188

/-! ## A039213.P3580069042770094032

`eq[A034429(n+1), A350872(n+1)]`
-/

namespace A039213.P3580069042770094032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039213.P3580069042770094032

/-!
# A039214: Numbers whose base-12 representation has the same number of 0's and 5's.

The programs for A039214, there is no canonical definition to state claims against.
-/

/-! ## A039214.P4513509196588661637

`record[A057357(n)+A000035(A052905(n))]`
-/

namespace A039214.P4513509196588661637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 n + A000035 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039214.P4513509196588661637

/-! ## A039214.P15168120687697475785

`lt[A186683(n+4), A304998(A025895(n))]`
-/

namespace A039214.P15168120687697475785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186683 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304998 (A025895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039214.P15168120687697475785

/-! ## A039214.P12489108689796577566

`lt[A285076(n+4), A001511(A367690(n+1))]`
-/

namespace A039214.P12489108689796577566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A367690 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039214.P12489108689796577566

/-! ## A039214.P1853514370411985366

`A316843(A079824(n+1))`
-/

namespace A039214.P1853514370411985366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A079824 (n + 1)).toNat

end

end A039214.P1853514370411985366

/-!
# A039215: Numbers whose base-12 representation has the same number of 0's and 6's.

The programs for A039215, there is no canonical definition to state claims against.
-/

/-! ## A039215.P8979077643244883562

`lt[0, A022928(A349991(n))]`
-/

namespace A039215.P8979077643244883562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022928 (A349991 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039215.P8979077643244883562

/-! ## A039215.P16882611353450642533

`eq[1, A022928(A349991(n+1))]+1`
-/

namespace A039215.P16882611353450642533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022928 (A349991 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039215.P16882611353450642533

/-! ## A039215.P7701638334051267775

`eq[A022928(A349991(n)), A054977(n)]`
-/

namespace A039215.P7701638334051267775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022928 (A349991 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039215.P7701638334051267775

/-! ## A039215.P12895469348226363650

`eq[A057427(n), A245966(A349991(n))]`
-/

namespace A039215.P12895469348226363650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245966 (A349991 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039215.P12895469348226363650

/-! ## A039215.P18012142696350946326

`eq[A178334(n), A245966(A349991(n))]`
-/

namespace A039215.P18012142696350946326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245966 (A349991 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039215.P18012142696350946326

/-! ## A039215.P6540427240564760128

`lt[A079979(n), A321591(A243827(n))]`
-/

namespace A039215.P6540427240564760128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321591 (A243827 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039215.P6540427240564760128

/-!
# A039216: Numbers whose base-12 representation has the same number of 0's and 7's.

The programs for A039216, there is no canonical definition to state claims against.
-/

/-! ## A039216.P6663041378652653013

`∑[A040493(2*(n+1)²-n*a(n-1))]` with `a(0)=1`
-/

namespace A039216.P6663041378652653013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A040493 ((2 * (n + 1) ^ 2 : ℤ) - (n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039216.P6663041378652653013

/-! ## A039216.P14818602903459323261

`record[A008612(A270788(2*n+3)+n)]`
-/

namespace A039216.P14818602903459323261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A270788 (2 * n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039216.P14818602903459323261

/-! ## A039216.P9272518106816959340

`A002266(Δ[A049636(C(2*n, 2)+2*n)])`
-/

namespace A039216.P9272518106816959340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (Nat.choose (2 * n) 2 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (f1 (n + 1) - f1 n).toNat

end

end A039216.P9272518106816959340

/-! ## A039216.P15990881902213492667

`lt[A010892(n), A001511(A348239(n))]`
-/

namespace A039216.P15990881902213492667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A348239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039216.P15990881902213492667

/-! ## A039216.P3852197222842876502

`lt[A010892(n), A019429(A219257(n+1))]`
-/

namespace A039216.P3852197222842876502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A219257 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039216.P3852197222842876502

/-! ## A039216.P4735834207516028257

`A153671(A153671(n+1))+A057354(A004526(n))`
-/

namespace A039216.P4735834207516028257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (A153671 (n + 1)).toNat + A057354 (A004526 n).toNat

end

end A039216.P4735834207516028257

/-! ## A039216.P10242483839512269057

`lt[A010892(n), A124625(A134479(n))]`
-/

namespace A039216.P10242483839512269057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A134479 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039216.P10242483839512269057

/-! ## A039216.P17669988733498416560

`comp[A272975(n+1)]%A166159(n+1)`
-/

namespace A039216.P17669988733498416560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A166159 (n + 1))

end

end A039216.P17669988733498416560

/-!
# A039217: Numbers whose base-12 representation has the same number of 0's and 8's.

The programs for A039217, there is no canonical definition to state claims against.
-/

/-! ## A039217.P1345270070641190102

`lt[A092524(ceil(C(or(1, n), n)/2)), A008578(n+1)]`
-/

namespace A039217.P1345270070641190102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039217.P1345270070641190102

/-! ## A039217.P1682382788883005209

`lt[A092524(A158416(n)), A002858(n+1)]`
-/

namespace A039217.P1682382788883005209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A158416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039217.P1682382788883005209

/-! ## A039217.P853639532824673674

`lt[A001057(A315497(n+2)), A122284(n)]`
-/

namespace A039217.P853639532824673674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315497 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039217.P853639532824673674

/-! ## A039217.P8057953182933816815

`lt[A040860(n), A264757(A002061(n+4))]`
-/

namespace A039217.P8057953182933816815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264757 (A002061 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039217.P8057953182933816815

/-! ## A039217.P1008804014692222898

`lt[A325683(A271321(n+5)), A073093(n+2)]`
-/

namespace A039217.P1008804014692222898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325683 (A271321 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039217.P1008804014692222898

/-! ## A039217.P10686769361317708384

`lt[A014577(A132759(n)), A059126(n)]`
-/

namespace A039217.P10686769361317708384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A132759 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039217.P10686769361317708384

/-! ## A039217.P18360015185789867230

`lt[A010892(A132759(n)), A255051(n+1)]`
-/

namespace A039217.P18360015185789867230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A132759 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039217.P18360015185789867230

/-! ## A039217.P17565657747757333838

`lt[5, A162325(n+8)²]`
-/

namespace A039217.P17565657747757333838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162325 (n + 8) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039217.P17565657747757333838

/-!
# A039218: Numbers whose base-12 representation has the same number of 0's and 9's.

The programs for A039218, there is no canonical definition to state claims against.
-/

/-! ## A039218.P8754844764878260067

`lt[A123565(A000217(n+1)), A178179(n+1)]`
-/

namespace A039218.P8754844764878260067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (A000217 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039218.P8754844764878260067

/-! ## A039218.P5839340841325830766

`lt[A101026(A249224(n+2)), 4]`
-/

namespace A039218.P5839340841325830766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101026 (A249224 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039218.P5839340841325830766

/-! ## A039218.P11788761262802233295

`lt[1-and(2, n), A104701(A104706(n+1))]`
-/

namespace A039218.P11788761262802233295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104701 (A104706 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039218.P11788761262802233295

/-! ## A039218.P7100521428871888703

`lt[A049347(n), A318935(A104249(n))]`
-/

namespace A039218.P7100521428871888703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318935 (A104249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039218.P7100521428871888703

/-! ## A039218.P10702657988337704337

`eq[A057427(n), A293517(A069901(n+1))]`
-/

namespace A039218.P10702657988337704337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 (A069901 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039218.P10702657988337704337

/-! ## A039218.P14049002339497448773

`A118759(A039271(n+1)+1)`
-/

namespace A039218.P14049002339497448773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A039271 (n + 1) + 1).toNat

end

end A039218.P14049002339497448773

/-! ## A039218.P5440545846738574376

`A039271(n+1)+A021913(A090288(n))`
-/

namespace A039218.P5440545846738574376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039271 (n + 1) + A021913 (A090288 n).toNat

end

end A039218.P5440545846738574376

/-!
# A039219: Numbers whose base-12 representation has the same number of 0's and 10's.

The programs for A039219, the canonical program `A039219.P17376334954191600038` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039219 has offset 1).

The definition of A039219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039219.P16375696394945230090

`eq[0, A104488(A007623(n)+8)]`
-/

namespace A039219.P16375696394945230090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A007623 n + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039219.P16375696394945230090

namespace A039219

/-- `eq[0, A104488(A007623(n)+8)]` -/
def P16375696394945230090.Spec : Prop :=
  ∀ n, (P16375696394945230090.a n : ℤ) = A039219 (n + 1)

end A039219

/-! ## A039219.P14846900253379028897

`lt[A104488(A007623(n+1)+8), 1]+1`
-/

namespace A039219.P14846900253379028897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A007623 (n + 1) + 8).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A039219.P14846900253379028897

namespace A039219

/-- `lt[A104488(A007623(n+1)+8), 1]+1` -/
def P14846900253379028897.Spec : Prop :=
  ∀ n, (P14846900253379028897.a n : ℤ) = A039219 (n + 1)

end A039219

/-! ## A039219.P2025945652177501603

`lt[A007623(n), A109049(A007623(n))]`
-/

namespace A039219.P2025945652177501603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 (A007623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039219.P2025945652177501603

namespace A039219

/-- `lt[A007623(n), A109049(A007623(n))]` -/
def P2025945652177501603.Spec : Prop :=
  ∀ n, (P2025945652177501603.a n : ℤ) = A039219 (n + 1)

end A039219

/-! ## A039219.P17376334954191600038

`A329624(n+1)+A076314(A056142(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039219

/-- `A329624(n+1)+A076314(A056142(n))` -/
def P17376334954191600038.Spec : Prop :=
  ∀ n, P17376334954191600038.a n = A039219 (n + 1)

theorem P17376334954191600038.correct : P17376334954191600038.Spec := by
  intro n
  simp only [A039219, Nat.add_sub_cancel]

end A039219

/-! ## A039219.P16334030971097059873

`lt[A010194(A007623(n)), A055026(n+1)]`
-/

namespace A039219.P16334030971097059873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 (A007623 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039219.P16334030971097059873

namespace A039219

/-- `lt[A010194(A007623(n)), A055026(n+1)]` -/
def P16334030971097059873.Spec : Prop :=
  ∀ n, (P16334030971097059873.a n : ℤ) = A039219 (n + 1)

end A039219

/-! ## A039219.P7054241274307235671

`lt[A055641(A007623(n)), A205184(n+1)]`
-/

namespace A039219.P7054241274307235671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007623 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039219.P7054241274307235671

namespace A039219

/-- `lt[A055641(A007623(n)), A205184(n+1)]` -/
def P7054241274307235671.Spec : Prop :=
  ∀ n, (P7054241274307235671.a n : ℤ) = A039219 (n + 1)

end A039219

/-! ## A039219.P12058219525260824550

`lt[A305374(A205193(n+1)), A205184(n+1)]`
-/

namespace A039219.P12058219525260824550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 (A205193 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039219.P12058219525260824550

namespace A039219

/-- `lt[A305374(A205193(n+1)), A205184(n+1)]` -/
def P12058219525260824550.Spec : Prop :=
  ∀ n, (P12058219525260824550.a n : ℤ) = A039219 (n + 1)

end A039219

/-! ## A039219.P12120429431106740410

`A102487(n+1)+A055641(A053143(n+1))!`
-/

namespace A039219.P12120429431106740410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 1) + (Nat.factorial (A055641 (A053143 (n + 1)).toNat).toNat : ℤ)

end

end A039219.P12120429431106740410

namespace A039219

/-- `A102487(n+1)+A055641(A053143(n+1))!` -/
def P12120429431106740410.Spec : Prop :=
  ∀ n, P12120429431106740410.a n = A039219 (n + 1)

end A039219

/-! ## A039219.P16556618612021382077

`record[A233583(n+1)-A104488(A007623(n)+8)]`
-/

namespace A039219.P16556618612021382077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A104488 (A007623 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039219.P16556618612021382077

namespace A039219

/-- `record[A233583(n+1)-A104488(A007623(n)+8)]` -/
def P16556618612021382077.Spec : Prop :=
  ∀ n, P16556618612021382077.a n = A039219 (n + 1)

end A039219

/-!
# A039220: Numbers whose base-12 representation has the same number of 1's and 2's.

The programs for A039220, there is no canonical definition to state claims against.
-/

/-! ## A039220.P6270618669367122455

`lt[A340169(A144678(n)), A340170(n+1)]`
-/

namespace A039220.P6270618669367122455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340169 (A144678 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039220.P6270618669367122455

/-! ## A039220.P2984752590047299954

`lt[A157987(A325683(n)), A000038(n)]`
-/

namespace A039220.P2984752590047299954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157987 (A325683 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039220.P2984752590047299954

/-! ## A039220.P9733374341642763996

`lt[A157987(A325683(n)), A061896(n)]`
-/

namespace A039220.P9733374341642763996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157987 (A325683 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039220.P9733374341642763996

/-! ## A039220.P13231640564895420665

`lt[A023443(n), A262515(A088469(2*n+5))]`
-/

namespace A039220.P13231640564895420665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262515 (A088469 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039220.P13231640564895420665

/-!
# A039228: Numbers whose base-12 representation has the same number of 1's and 10's.

The programs for A039228, there is no canonical definition to state claims against.
-/

/-! ## A039228.P10248222844818258924

`eq[A000045(A339221(n)), A043562(n)]`
-/

namespace A039228.P10248222844818258924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A339221 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039228.P10248222844818258924

/-!
# A039229: Numbers whose base-12 representation has the same number of 1's and 11's.

The programs for A039229, there is no canonical definition to state claims against.
-/

/-! ## A039229.P18067498504278194494

`lt[A329697(A093917(n+1)), A163528(3*n+4)]`
-/

namespace A039229.P18067498504278194494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A093917 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039229.P18067498504278194494

/-!
# A039232: Numbers whose base-12 representation has the same number of 2's and 5's.

The programs for A039232, there is no canonical definition to state claims against.
-/

/-! ## A039232.P4475632197948768656

`lt[A360995(3*n+5), A018252(A361009(2*n+1))]`
-/

namespace A039232.P4475632197948768656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360995 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A361009 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039232.P4475632197948768656

/-!
# A039233: Numbers whose base-12 representation has the same number of 2's and 6's.

The programs for A039233, there is no canonical definition to state claims against.
-/

/-! ## A039233.P7864096105690739432

`lt[A292247(n+1), A035516(A092739(n+1))]`
-/

namespace A039233.P7864096105690739432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (A092739 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039233.P7864096105690739432

/-!
# A039235: Numbers whose base-12 representation has the same number of 2's and 8's.

The programs for A039235, there is no canonical definition to state claims against.
-/

/-! ## A039235.P14964768199123708503

`A319571(A039247(2*(n+1))²)`
-/

namespace A039235.P14964768199123708503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A039247 (2 * (n + 1)) ^ 2).toNat

end

end A039235.P14964768199123708503

/-! ## A039235.P8756301714833770916

`eq[A121449(A064459(n)), A334924(n+4)]`
-/

namespace A039235.P8756301714833770916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (A064459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039235.P8756301714833770916

/-!
# A039236: Numbers whose base-12 representation has the same number of 2's and 9's.

The programs for A039236, there is no canonical definition to state claims against.
-/

/-! ## A039236.P227388295936999695

`eq[A008615(n), A051162(A002265(n))]`
-/

namespace A039236.P227388295936999695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A002265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039236.P227388295936999695

/-! ## A039236.P3439158515611014587

`eq[A008615(n), A064514(A008621(n))]`
-/

namespace A039236.P3439158515611014587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064514 (A008621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039236.P3439158515611014587

/-!
# A039240: Numbers whose base-12 representation has the same number of 3's and 5's.

The programs for A039240, there is no canonical definition to state claims against.
-/

/-! ## A039240.P8915931139189803949

`lt[n, A173459(A047431(n+1))²]`
-/

namespace A039240.P8915931139189803949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173459 (A047431 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039240.P8915931139189803949

/-! ## A039240.P4956447658311669154

`comp[A166519(3*n)]%A272059(n+1)`
-/

namespace A039240.P4956447658311669154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A272059 (n + 1))

end

end A039240.P4956447658311669154

/-! ## A039240.P2038588553404316938

`lt[A228825(2*n+3), A228620(n+2)]`
-/

namespace A039240.P2038588553404316938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228825 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228620 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039240.P2038588553404316938

/-! ## A039240.P16193181044143918730

`lt[A257811(n+1), A103392(A020639(n+1))]`
-/

namespace A039240.P16193181044143918730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103392 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039240.P16193181044143918730

/-! ## A039240.P2658091834472292706

`lt[A352520(A333217(n+1)), A143663(n+1)]`
-/

namespace A039240.P2658091834472292706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352520 (A333217 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039240.P2658091834472292706

/-!
# A039241: Numbers whose base-12 representation has the same number of 3's and 6's.

The programs for A039241, there is no canonical definition to state claims against.
-/

/-! ## A039241.P18020621775782186843

`lt[-A138067(2*n+13), 1-and(2, n)]`
-/

namespace A039241.P18020621775782186843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138067 (2 * n + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039241.P18020621775782186843

/-! ## A039241.P12483957873073666546

`lt[xor(4, A088520(2*n+1))/2, n+3]`
-/

namespace A039241.P12483957873073666546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 4 (A088520 (2 * n + 1)) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A039241.P12483957873073666546

/-! ## A039241.P5713479265286960087

`eq[1, A179054(A259623(n+1))]`
-/

namespace A039241.P5713479265286960087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179054 (A259623 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039241.P5713479265286960087

/-! ## A039241.P15235766075416294808

`lt[A007814(A115339(n+3)), 2]`
-/

namespace A039241.P15235766075416294808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A115339 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039241.P15235766075416294808

/-! ## A039241.P3277170910506355395

`lt[A006842(A007318(n)), A202015(n+1)]`
-/

namespace A039241.P3277170910506355395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006842 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039241.P3277170910506355395

/-!
# A039242: Numbers whose base-12 representation has the same number of 3's and 7's.

The programs for A039242, there is no canonical definition to state claims against.
-/

/-! ## A039242.P6967338597883757996

`eq[A000005(A161618(n+1)), A244226(n+1)]`
-/

namespace A039242.P6967338597883757996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A161618 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039242.P6967338597883757996

/-! ## A039242.P9485045389040452969

`lt[val(n+1, 2)², A122978(2*n+5)]`
-/

namespace A039242.P9485045389040452969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122978 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039242.P9485045389040452969

/-! ## A039242.P11784578416637344949

`lt[val(n+1, 4), A348041(3*(n+1)/2^val(n+1, 2))]`
-/

namespace A039242.P11784578416637344949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039242.P11784578416637344949

/-! ## A039242.P2336366818165868898

`lt[acot(A335183(n)), A335185(n+7)]`
-/

namespace A039242.P2336366818165868898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A335183 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039242.P2336366818165868898

/-! ## A039242.P8212525817281687960

`lt[0, A135481(A336321(3*(n+1)))]`
-/

namespace A039242.P8212525817281687960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A336321 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039242.P8212525817281687960

/-!
# A039243: Numbers whose base-12 representation has the same number of 3's and 8's.

The programs for A039243, there is no canonical definition to state claims against.
-/

/-! ## A039243.P7923786101577192064

`lt[A325268(A080335(n)), 2]`
-/

namespace A039243.P7923786101577192064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325268 (A080335 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039243.P7923786101577192064

/-! ## A039243.P7419070507295898460

`eq[A161618(n+1), A187967(n+2)]`
-/

namespace A039243.P7419070507295898460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039243.P7419070507295898460

/-! ## A039243.P12553818966358320215

`eq[A161618(n+1), A188038(n+4)]`
-/

namespace A039243.P12553818966358320215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039243.P12553818966358320215

/-! ## A039243.P7225479197517888166

`∑[A055396(A301690(n)²)]`
-/

namespace A039243.P7225479197517888166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A301690 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039243.P7225479197517888166

/-!
# A039244: Numbers whose base-12 representation has the same number of 3's and 9's.

The programs for A039244, there is no canonical definition to state claims against.
-/

/-! ## A039244.P4211933252593287540

`A004526(A039260(2*(n+1)))%A325866(3*(n+1))`
-/

namespace A039244.P4211933252593287540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A039260 (2 * (n + 1))).toNat) (A325866 (3 * (n + 1)))

end

end A039244.P4211933252593287540

/-! ## A039244.P7624757635441342716

`A329566(A185255(n))+A047263(n+1)`
-/

namespace A039244.P7624757635441342716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329566 (A185255 n).toNat + A047263 (n + 1)

end

end A039244.P7624757635441342716

/-!
# A039245: Numbers whose base-12 representation has the same number of 3's and 10's.

The programs for A039245, there is no canonical definition to state claims against.
-/

/-! ## A039245.P9459739912462678009

`lt[0, A225488(A145266(n+1))]`
-/

namespace A039245.P9459739912462678009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225488 (A145266 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039245.P9459739912462678009

/-! ## A039245.P4209229184457932280

`floor(A003056(A080753(n+1)²)/4)`
-/

namespace A039245.P4209229184457932280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 (A080753 (n + 1) ^ 2).toNat : ℚ) / 4⌋

end

end A039245.P4209229184457932280

/-! ## A039245.P9843147239432361403

`A002265(A003056(A080753(n+1)²))`
-/

namespace A039245.P9843147239432361403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003056 (A080753 (n + 1) ^ 2).toNat).toNat

end

end A039245.P9843147239432361403

/-! ## A039245.P13574462529368658955

`lt[A039814(3*n+2), A182475(A013620(n))-10]`
-/

namespace A039245.P13574462529368658955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039814 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182475 (A013620 n).toNat - 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039245.P13574462529368658955

/-!
# A039246: Numbers whose base-12 representation has the same number of 3's and 11's.

The programs for A039246, there is no canonical definition to state claims against.
-/

/-! ## A039246.P11986455584864122114

`lt[Δ[A158777(2*n+1)], 1]`
-/

namespace A039246.P11986455584864122114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158777 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A039246.P11986455584864122114

/-! ## A039246.P17224857380209645910

`lt[n%2, A124762(3*n)+1]`
-/

namespace A039246.P17224857380209645910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (3 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039246.P17224857380209645910

/-! ## A039246.P17297784553176560114

`lt[1, (-2)^A358015(2*(n+2))]`
-/

namespace A039246.P17297784553176560114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A358015 (2 * (n + 2)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A039246.P17297784553176560114

/-! ## A039246.P16634821123968725829

`lt[char[or(3, n)]*A144269(2*n+1), 4]`
-/

namespace A039246.P16634821123968725829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A144269 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A039246.P16634821123968725829

/-! ## A039246.P2534501617622640965

`lt[A063725(n+2), A290785(A394052(3*(n+1)))]`
-/

namespace A039246.P2534501617622640965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290785 (A394052 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039246.P2534501617622640965

/-!
# A039247: Numbers whose base-12 representation has the same number of 4's and 5's.

The programs for A039247, there is no canonical definition to state claims against.
-/

/-! ## A039247.P9460568067734752248

`lt[2, A007400(A008000(2*n+3))]`
-/

namespace A039247.P9460568067734752248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (A008000 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039247.P9460568067734752248

/-! ## A039247.P11818293895863829022

`lt[A010892(n+2), A058281(A177433(n+1))]`
-/

namespace A039247.P11818293895863829022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A177433 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039247.P11818293895863829022

/-! ## A039247.P16938570718059314213

`lt[A010892(n+2), A001511(A000217(3*n+2))]`
-/

namespace A039247.P16938570718059314213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000217 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039247.P16938570718059314213

/-! ## A039247.P546090124710672470

`lt[A001057(∑[A292255(n+1)]), 1]`
-/

namespace A039247.P546090124710672470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A039247.P546090124710672470

/-! ## A039247.P14403848451176368129

`eq[Δ[A061853(n+1)], A034432(n+1)]`
-/

namespace A039247.P14403848451176368129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061853 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A039247.P14403848451176368129

/-!
# A039248: Numbers whose base-12 representation has the same number of 4's and 6's.

The programs for A039248, there is no canonical definition to state claims against.
-/

/-! ## A039248.P15546505573988022691

`A291811(A047548(n+1))`
-/

namespace A039248.P15546505573988022691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A047548 (n + 1)).toNat

end

end A039248.P15546505573988022691

/-! ## A039248.P15863832597647595798

`lt[A189572(n+1), A205483(n+1)]`
-/

namespace A039248.P15863832597647595798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039248.P15863832597647595798

/-! ## A039248.P7330510189746877720

`lt[A080843(2*n), A074811(n+1)]`
-/

namespace A039248.P7330510189746877720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039248.P7330510189746877720

/-! ## A039248.P11214678424010309838

`lt[A080843(2*n), A205483(n+1)]`
-/

namespace A039248.P11214678424010309838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039248.P11214678424010309838

/-! ## A039248.P259540195865858879

`Δ[A233583(∑[A151988(n)]+8)]-1`
-/

namespace A039248.P259540195865858879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f2 j + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A039248.P259540195865858879

/-!
# A039249: Numbers whose base-12 representation has the same number of 4's and 7's.

The programs for A039249, there is no canonical definition to state claims against.
-/

/-! ## A039249.P1888987392638474738

`lt[A157128(A051682(n)), 2]`
-/

namespace A039249.P1888987392638474738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A051682 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039249.P1888987392638474738

/-! ## A039249.P7552494528187408184

`∑[A091090(A001204(n)²)]-2`
-/

namespace A039249.P7552494528187408184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A001204 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A039249.P7552494528187408184

/-! ## A039249.P5235531683366857850

`lt[A087960(n), A158853(n)+1]`
-/

namespace A039249.P5235531683366857850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158853 (n + 11) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039249.P5235531683366857850

/-! ## A039249.P14815233411938692275

`lt[A002129(A081268(n)), A081268(n+1)]`
-/

namespace A039249.P14815233411938692275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A081268 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081268 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039249.P14815233411938692275

/-! ## A039249.P8480370161037434925

`eq[1, A211111(A081267(n+3))]`
-/

namespace A039249.P8480370161037434925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (A081267 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039249.P8480370161037434925

/-!
# A039250: Numbers whose base-12 representation has the same number of 4's and 8's.

The programs for A039250, there is no canonical definition to state claims against.
-/

/-! ## A039250.P9868453343722656346

`record[gcd(n, Δ[A065948(n)])]`
-/

namespace A039250.P9868453343722656346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065948 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039250.P9868453343722656346

/-! ## A039250.P148660611311706032

`comp[4*comp[3*n]]%A093930(n+1)`
-/

namespace A039250.P148660611311706032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A093930 (n + 1))

end

end A039250.P148660611311706032

/-! ## A039250.P1730457694034203240

`lt[A035444(n), exp(A035377(n))]`
-/

namespace A039250.P1730457694034203240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A035377 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A039250.P1730457694034203240

/-! ## A039250.P13649800889380021298

`comp[A092259(n+1)]%A174260(n+1)`
-/

namespace A039250.P13649800889380021298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A174260 (n + 1))

end

end A039250.P13649800889380021298

/-! ## A039250.P16418382074522819840

`comp[A306199(n+1)]%A101775(n+1)`
-/

namespace A039250.P16418382074522819840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306199 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A101775 (n + 1))

end

end A039250.P16418382074522819840

/-!
# A039251: Numbers whose base-12 representation has the same number of 4's and 9's.

The programs for A039251, there is no canonical definition to state claims against.
-/

/-! ## A039251.P14489259422304438052

`comp[A161576(3*n+2)]%A161551(n+1)`
-/

namespace A039251.P14489259422304438052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161576 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A161551 (n + 1))

end

end A039251.P14489259422304438052

/-! ## A039251.P3037324789673362347

`comp[A355200(3*n+2)]%A355238(n+1)`
-/

namespace A039251.P3037324789673362347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355200 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A355238 (n + 1))

end

end A039251.P3037324789673362347

/-! ## A039251.P12784632858877952079

`lt[A259657(n+3), A001222(A284640(n+1))]`
-/

namespace A039251.P12784632858877952079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259657 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284640 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039251.P12784632858877952079

/-! ## A039251.P7050320840528281282

`lt[A254377(A332280(n)), A375325(n+1)]`
-/

namespace A039251.P7050320840528281282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A332280 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039251.P7050320840528281282

/-! ## A039251.P9900590122332080157

`lt[A005131(A276076(n+3)), 3]`
-/

namespace A039251.P9900590122332080157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A276076 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039251.P9900590122332080157

/-!
# A039253: Numbers whose base-12 representation has the same number of 4's and 11's.

The programs for A039253, there is no canonical definition to state claims against.
-/

/-! ## A039253.P10671431200434995552

`(A039214(n+1)-1)%A339631(n)`
-/

namespace A039253.P10671431200434995552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039214 (n + 1) - 1) (A339631 n)

end

end A039253.P10671431200434995552

/-! ## A039253.P8637572685896142006

`A039214(n+1)%A187463(n+1)-1`
-/

namespace A039253.P8637572685896142006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039214 (n + 1)) (A187463 (n + 1)) - 1

end

end A039253.P8637572685896142006

/-! ## A039253.P14396936609414733899

`floor(A118759(A039271(or(1, n)+n+1))/2)`
-/

namespace A039253.P14396936609414733899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118759 (A039271 (Nat.lor 1 n + n + 1)).toNat : ℚ) / 2⌋

end

end A039253.P14396936609414733899

/-! ## A039253.P4778262692982344786

`lt[A010892(n+2), A204988(A088827(2*n+3))]`
-/

namespace A039253.P4778262692982344786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A088827 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039253.P4778262692982344786

/-! ## A039253.P4809547015475171368

`comp[A014601(3*n+2)]%A270929(n+1)`
-/

namespace A039253.P4809547015475171368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A270929 (n + 1))

end

end A039253.P4809547015475171368

/-!
# A039254: Numbers whose base-12 representation has the same number of 5's and 6's.

The programs for A039254, there is no canonical definition to state claims against.
-/

/-! ## A039254.P6986839778223179469

`or(A000035(A007742(n)), A151988(n))`
-/

namespace A039254.P6986839778223179469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A007742 n).toNat) (A151988 n)

end

end A039254.P6986839778223179469

/-! ## A039254.P15358507353463967954

`or(A000035(A007742(n)), A039255(n+1))`
-/

namespace A039254.P15358507353463967954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A007742 n).toNat) (A039255 (n + 1))

end

end A039254.P15358507353463967954

/-! ## A039254.P17057936379517590835

`or(A059841(A098795(n+1)), A151988(n))`
-/

namespace A039254.P17057936379517590835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A098795 (n + 1)).toNat) (A151988 n)

end

end A039254.P17057936379517590835

/-!
# A039255: Numbers whose base-12 representation has the same number of 5's and 7's.

The programs for A039255, there is no canonical definition to state claims against.
-/

/-! ## A039255.P10404752929695485268

`A109754(∑[n])+comp[xor(2, 6*n)+3]`
-/

namespace A039255.P10404752929695485268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A039255.P10404752929695485268

/-! ## A039255.P8955342117836448967

`A000035((2*n)²)+comp[xor(2, 6*n)+3]`
-/

namespace A039255.P8955342117836448967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((2 * n) ^ 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A039255.P8955342117836448967

/-! ## A039255.P17255052289978282390

`comp[xor(2, 6*n)+3]*A010685((2*n)²)`
-/

namespace A039255.P17255052289978282390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A010685 ((2 * n) ^ 2)

end

end A039255.P17255052289978282390

/-! ## A039255.P5816568053788949585

`comp[xor(2, 6*n)+3]*A019305((2*n)²)`
-/

namespace A039255.P5816568053788949585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A019305 ((2 * n) ^ 2)

end

end A039255.P5816568053788949585

/-!
# A039256: Numbers whose base-12 representation has the same number of 5's and 8's.

The programs for A039256, there is no canonical definition to state claims against.
-/

/-! ## A039256.P6248102631476451474

`lt[A353473(A296541(n+1)), A146094(n)]`
-/

namespace A039256.P6248102631476451474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353473 (A296541 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039256.P6248102631476451474

/-! ## A039256.P5965588612416475932

`lt[A000122(A005891(n+3)), A146094(n)]`
-/

namespace A039256.P5965588612416475932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A005891 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039256.P5965588612416475932

/-! ## A039256.P11926746288244301299

`lt[A112030(n), A002378(A069530(2*(n+1)))]`
-/

namespace A039256.P11926746288244301299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A069530 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039256.P11926746288244301299

/-! ## A039256.P8489343485989300821

`A002265(A311634(n))+(A254929(n+1)+1)%2`
-/

namespace A039256.P8489343485989300821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A311634 n).toNat + Int.tmod (A254929 (n + 1) + 1) 2

end

end A039256.P8489343485989300821

/-!
# A039257: Numbers whose base-12 representation has the same number of 5's and 9's.

The programs for A039257, there is no canonical definition to state claims against.
-/

/-! ## A039257.P4838520474716309914

`lt[val(n+1, 2)%2, gcd(6, A328982(n+1))]`
-/

namespace A039257.P4838520474716309914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A328982 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039257.P4838520474716309914

/-! ## A039257.P3272273420549593318

`lt[gcd(a(n-2)+n+1, (n+1)²)+n+1, A329991(n+1)]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A039257.P3272273420549593318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  Nat.gcd (f1 (n - 2) + (n + 1)) ((n + 1) ^ 2) + (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039257.P3272273420549593318

/-! ## A039257.P761507753809880469

`lt[A020639(A340008(n+5)), 4]`
-/

namespace A039257.P761507753809880469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A340008 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039257.P761507753809880469

/-! ## A039257.P200802883638184065

`lt[A344442(3*n+5), A344457(n+5)]`
-/

namespace A039257.P200802883638184065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344442 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344457 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039257.P200802883638184065

/-! ## A039257.P8531127753326953144

`comp[A163980(3*n+2)]%A361851(n+1)`
-/

namespace A039257.P8531127753326953144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A361851 (n + 1))

end

end A039257.P8531127753326953144

/-! ## A039257.P3920017400920275669

`A002265(A312162(n))%A253079(n)`
-/

namespace A039257.P3920017400920275669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A312162 n).toNat) (A253079 n)

end

end A039257.P3920017400920275669

/-! ## A039257.P9052214482193144100

`A002265(A312162(n)%A092867(n+1))`
-/

namespace A039257.P9052214482193144100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A312162 n) (A092867 (n + 1))).toNat

end

end A039257.P9052214482193144100

/-!
# A039258: Numbers whose base-12 representation has the same number of 5's and 10's.

The programs for A039258, there is no canonical definition to state claims against.
-/

/-! ## A039258.P261071057620046341

`floor(Δ[A335048(n+1)]/10)+n`
-/

namespace A039258.P261071057620046341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 10⌋ + (n : ℤ)

end

end A039258.P261071057620046341

/-! ## A039258.P11457489474681969398

`A059995(Δ[A335048(n+1)])+n`
-/

namespace A039258.P11457489474681969398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A039258.P11457489474681969398

/-! ## A039258.P18057403512136454996

`∑[Δ[A039216(n+1)]%A120861(n+1)]`
-/

namespace A039258.P18057403512136454996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039216 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A120861 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039258.P18057403512136454996

/-! ## A039258.P7685832418525337546

`A002265(A310398(n))%A114232(n+1)`
-/

namespace A039258.P7685832418525337546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A310398 n).toNat) (A114232 (n + 1))

end

end A039258.P7685832418525337546

/-! ## A039258.P4371183150821546238

`eq[A156685(n+1), A347698(n+1)]`
-/

namespace A039258.P4371183150821546238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039258.P4371183150821546238

/-!
# A039259: Numbers whose base-12 representation has the same number of 5's and 11's.

The programs for A039259, there is no canonical definition to state claims against.
-/

/-! ## A039259.P4887376902502319894

`A171397(2*n)-A023443(n)-A183065(A057944(n))`
-/

namespace A039259.P4887376902502319894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (2 * n) - A023443 n - A183065 (A057944 n).toNat

end

end A039259.P4887376902502319894

/-! ## A039259.P16505538361772193547

`A171397(2*n)-A023443(n)-A057427(A154100(n+1))`
-/

namespace A039259.P16505538361772193547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (2 * n) - A023443 n - A057427 (A154100 (n + 1)).toNat

end

end A039259.P16505538361772193547

/-! ## A039259.P3283018999609958893

`A171397(2*n)-A023443(n)-A005171(A280076(n+1))`
-/

namespace A039259.P3283018999609958893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (2 * n) - A023443 n - A005171 (A280076 (n + 1)).toNat

end

end A039259.P3283018999609958893

/-! ## A039259.P6389224914064328367

`A171397(2*n)-A023443(n)-A001222(A152087(n+1))`
-/

namespace A039259.P6389224914064328367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (2 * n) - A023443 n - A001222 (A152087 (n + 1)).toNat

end

end A039259.P6389224914064328367

/-! ## A039259.P12598911373225059519

`A171397(2*n)-A023443(n)-A000034(A263458(n+1))`
-/

namespace A039259.P12598911373225059519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (2 * n) - A023443 n - A000034 (A263458 (n + 1)).toNat

end

end A039259.P12598911373225059519

/-!
# A039260: Numbers whose base-12 representation has the same number of 6's and 7's.

The programs for A039260, there is no canonical definition to state claims against.
-/

/-! ## A039260.P8227721888928971710

`A176740(C(2, A213360(n)))+A039265(n+2)`
-/

namespace A039260.P8227721888928971710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176740 (Nat.choose 2 (A213360 n).toNat) + A039265 (n + 2)

end

end A039260.P8227721888928971710

/-! ## A039260.P3160633894460584233

`A039265(n+2)-A133872(A000290(2*(n+1)))`
-/

namespace A039260.P3160633894460584233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039265 (n + 2) - A133872 (A000290 (2 * (n + 1))).toNat

end

end A039260.P3160633894460584233

/-!
# A039261: Numbers whose base-12 representation has the same number of 6's and 8's.

The programs for A039261, there is no canonical definition to state claims against.
-/

/-! ## A039261.P14658147268986245824

`∑[xor(n, A222249(n))^n+1]-2`
-/

namespace A039261.P14658147268986245824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A222249 n) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A039261.P14658147268986245824

/-! ## A039261.P7816362658167576093

`∑[A165191(xor(n, A222249(n)))]+n`
-/

namespace A039261.P7816362658167576093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 (Int.xor (n : ℤ) (A222249 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A039261.P7816362658167576093

/-! ## A039261.P804610672921250681

`∑[A085736(xor(n, A222249(n))+1)]-1`
-/

namespace A039261.P804610672921250681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (Int.xor (n : ℤ) (A222249 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039261.P804610672921250681

/-! ## A039261.P15328697814075970412

`∑[A096236(xor(n, A222249(n))+1)]-1`
-/

namespace A039261.P15328697814075970412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096236 (Int.xor (n : ℤ) (A222249 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039261.P15328697814075970412

/-! ## A039261.P10044894429515794365

`∑[A102038(xor(n, A222249(n))+1)]-1`
-/

namespace A039261.P10044894429515794365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102038 (Int.xor (n : ℤ) (A222249 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039261.P10044894429515794365

/-! ## A039261.P11371120157634359536

`∑[A137594(xor(n, A222249(n))+1)]-1`
-/

namespace A039261.P11371120157634359536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137594 (Int.xor (n : ℤ) (A222249 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039261.P11371120157634359536

/-! ## A039261.P17912289041100592547

`∑[(xor(n, A222249(n))+1)%A138100(n+1)]`
-/

namespace A039261.P17912289041100592547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A222249 n) + 1) (A138100 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039261.P17912289041100592547

/-! ## A039261.P8796956900738243885

`∑[(xor(n, A222249(n))^n)%A000045(n+2)]+n`
-/

namespace A039261.P8796956900738243885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A222249 n) ^ n) (A000045 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A039261.P8796956900738243885

/-! ## A039261.P854192864561709023

`(A039266(n+2)-1)%A253802(A008619(n))`
-/

namespace A039261.P854192864561709023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039266 (n + 2) - 1) (A253802 (A008619 n).toNat)

end

end A039261.P854192864561709023

/-!
# A039262: Numbers whose base-12 representation has the same number of 6's and 9's.

The programs for A039262, there is no canonical definition to state claims against.
-/

/-! ## A039262.P11726406637489267246

`record[A103823(A325688(n))]`
-/

namespace A039262.P11726406637489267246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (A325688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039262.P11726406637489267246

/-! ## A039262.P10595747885015933542

`∑[A271232(n+1)%A000034(n+1)]+n`
-/

namespace A039262.P10595747885015933542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271232 (n + 1)) (A000034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A039262.P10595747885015933542

/-! ## A039262.P4088865983073828379

`A039267(n+2)-A057427(A035457(2*n))`
-/

namespace A039262.P4088865983073828379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039267 (n + 2) - A057427 (A035457 (2 * n)).toNat

end

end A039262.P4088865983073828379

/-! ## A039262.P10049447799057668738

`∑[val(A002522(A056105(n)), 10)]+n`
-/

namespace A039262.P10049447799057668738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002522 (A056105 n).toNat).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A039262.P10049447799057668738

/-! ## A039262.P10497075893733679379

`A023443(A039267(n+2)%A167523(n+1))`
-/

namespace A039262.P10497075893733679379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A039267 (n + 2)) (A167523 (n + 1))).toNat

end

end A039262.P10497075893733679379

/-! ## A039262.P5975043395128480898

`or(A039267(n+2)-1, A143062(A072572(n+1)))`
-/

namespace A039262.P5975043395128480898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039267 (n + 2) - 1) (A143062 (A072572 (n + 1)).toNat)

end

end A039262.P5975043395128480898

/-! ## A039262.P13752943601182135689

`A039267(n+2)-A157928(A132457(n+1))`
-/

namespace A039262.P13752943601182135689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039267 (n + 2) - A157928 (A132457 (n + 1)).toNat

end

end A039262.P13752943601182135689

/-!
# A039263: Numbers whose base-12 representation has the same number of 6's and 10's.

The programs for A039263, there is no canonical definition to state claims against.
-/

/-! ## A039263.P931934730444512028

`lt[A117946(n), A117888(n+5)]`
-/

namespace A039263.P931934730444512028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117888 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039263.P931934730444512028

/-! ## A039263.P2398686296833338164

`lt[A029696(A020742(n)), A125163(n+1)]`
-/

namespace A039263.P2398686296833338164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029696 (A020742 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039263.P2398686296833338164

/-! ## A039263.P9085742199750977719

`A039268(n+2)-A001222(A195602(n+1))`
-/

namespace A039263.P9085742199750977719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039268 (n + 2) - A001222 (A195602 (n + 1)).toNat

end

end A039263.P9085742199750977719

/-! ## A039263.P7829846300473363571

`lt[A062828(A060789(n+1)), A102352(n+1)]`
-/

namespace A039263.P7829846300473363571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A060789 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039263.P7829846300473363571

/-! ## A039263.P13269808161267262289

`lt[A167662(n+1), A017245(A300721(n+4))]`
-/

namespace A039263.P13269808161267262289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (A300721 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039263.P13269808161267262289

/-! ## A039263.P8281732572983644708

`lt[A001511(n+2), A020639(A008000(3*(n+1)))]`
-/

namespace A039263.P8281732572983644708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008000 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039263.P8281732572983644708

/-! ## A039263.P8337203786769683972

`lt[A055874(A000217(2*n+3)), 4]`
-/

namespace A039263.P8337203786769683972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A000217 (2 * n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039263.P8337203786769683972

/-! ## A039263.P15315194256874613510

`lt[A139391(n+1), A145266(n+1)]`
-/

namespace A039263.P15315194256874613510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039263.P15315194256874613510

/-!
# A039264: Numbers whose base-12 representation has the same number of 6's and 11's.

The programs for A039264, there is no canonical definition to state claims against.
-/

/-! ## A039264.P1580047028852756222

`comp[A042964(3*(n+1))]%A276889(n+1)`
-/

namespace A039264.P1580047028852756222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A276889 (n + 1))

end

end A039264.P1580047028852756222

/-! ## A039264.P1806187722020676679

`A039216(n+1)-A050361(A331927(n))`
-/

namespace A039264.P1806187722020676679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039216 (n + 1) - A050361 (A331927 n).toNat

end

end A039264.P1806187722020676679

/-! ## A039264.P8466015345123727615

`A057428(A119870(n+1))+A039216(n+1)`
-/

namespace A039264.P8466015345123727615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A119870 (n + 1)).toNat + A039216 (n + 1)

end

end A039264.P8466015345123727615

/-! ## A039264.P9811191774951598109

`A057428(A119871(n+1))+A039216(n+1)`
-/

namespace A039264.P9811191774951598109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A119871 (n + 1)).toNat + A039216 (n + 1)

end

end A039264.P9811191774951598109

/-! ## A039264.P17333946629724393826

`A039216(n+1)-A001222(A176371(n+1))`
-/

namespace A039264.P17333946629724393826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039216 (n + 1) - A001222 (A176371 (n + 1)).toNat

end

end A039264.P17333946629724393826

/-! ## A039264.P17819661115940247221

`A039216(n+1)-A001222(A219533(n+1))`
-/

namespace A039264.P17819661115940247221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039216 (n + 1) - A001222 (A219533 (n + 1)).toNat

end

end A039264.P17819661115940247221

/-!
# A039265: Numbers whose base-12 representation has the same number of 7's and 8's.

The programs for A039265, there is no canonical definition to state claims against.
-/

/-! ## A039265.P18178390293819615445

`A039269(n+2)-A054977(A171142(n+1))`
-/

namespace A039265.P18178390293819615445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039269 (n + 2) - A054977 (A171142 (n + 1)).toNat

end

end A039265.P18178390293819615445

/-! ## A039265.P815152394759161592

`A039269(n+2)-A054977(A181797(n+1))`
-/

namespace A039265.P815152394759161592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039269 (n + 2) - A054977 (A181797 (n + 1)).toNat

end

end A039265.P815152394759161592

/-! ## A039265.P17245246361774923902

`lt[A112046(n+4), A040350(A005448(n+1))]`
-/

namespace A039265.P17245246361774923902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040350 (A005448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039265.P17245246361774923902

/-! ## A039265.P11659823127131413875

`lt[A327146(A112049(n+4)), 1]`
-/

namespace A039265.P11659823127131413875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A112049 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039265.P11659823127131413875

/-! ## A039265.P493733240976479907

`A039269(n+2)-A001221(A302607(n+4))`
-/

namespace A039265.P493733240976479907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039269 (n + 2) - A001221 (A302607 (n + 4)).toNat

end

end A039265.P493733240976479907

/-! ## A039265.P14166754576626919087

`A039269(n+2)-A112284(A006530(n+1))`
-/

namespace A039265.P14166754576626919087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039269 (n + 2) - A112284 (A006530 (n + 1)).toNat

end

end A039265.P14166754576626919087

/-! ## A039265.P15968159840686014055

`A039269(n+2)-A167964(A276468(n+1))`
-/

namespace A039265.P15968159840686014055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039269 (n + 2) - A167964 (A276468 (n + 1)).toNat

end

end A039265.P15968159840686014055

/-!
# A039266: Numbers whose base-12 representation has the same number of 7's and 9's.

The programs for A039266, there is no canonical definition to state claims against.
-/

/-! ## A039266.P16220310852706017809

`comp[A166519(3*n+2)]%A276625(n+3)`
-/

namespace A039266.P16220310852706017809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A276625 (n + 3))

end

end A039266.P16220310852706017809

/-! ## A039266.P12340808233466207211

`lt[val(n+1, 2), A029898(A000326(n+1))]`
-/

namespace A039266.P12340808233466207211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029898 (A000326 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039266.P12340808233466207211

/-! ## A039266.P3339882918308679793

`lt[A079343(A000326(n)), A020639(n+1)]`
-/

namespace A039266.P3339882918308679793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A000326 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039266.P3339882918308679793

/-! ## A039266.P451915440173690046

`lt[A010076(n), A126801(n+1)²+1]`
-/

namespace A039266.P451915440173690046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126801 (n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039266.P451915440173690046

/-!
# A039267: Numbers whose base-12 representation has the same number of 7's and 10's.

The programs for A039267, there is no canonical definition to state claims against.
-/

/-! ## A039267.P8358863160692760397

`lt[8, A328479(A033996(n+3))]`
-/

namespace A039267.P8358863160692760397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A033996 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039267.P8358863160692760397

/-! ## A039267.P1820398668360886216

`∑[A160094(∑[A016813(n)])]-1`
-/

namespace A039267.P1820398668360886216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039267.P1820398668360886216

/-! ## A039267.P11645760695427465113

`∑[A160094(A000384(n+1))]-1`
-/

namespace A039267.P11645760695427465113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A000384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039267.P11645760695427465113

/-! ## A039267.P7055981306324918242

`∑[A160094(A000217(2*n+1))]-1`
-/

namespace A039267.P7055981306324918242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A000217 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039267.P7055981306324918242

/-! ## A039267.P8643024536390632167

`lt[A151933(n+1), A022856(n+1)%6]`
-/

namespace A039267.P8643024536390632167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022856 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039267.P8643024536390632167

/-! ## A039267.P5732936933775320350

`lt[A363741(n+4), A010888(A069834(n+3))]`
-/

namespace A039267.P5732936933775320350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363741 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A069834 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039267.P5732936933775320350

/-! ## A039267.P16599018891219273246

`lt[A010892(2*(n+2)), A019429(A219257(n+2))]`
-/

namespace A039267.P16599018891219273246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A219257 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039267.P16599018891219273246

/-! ## A039267.P2917375070155735121

`eq[0, A088722(A104249(n))]`
-/

namespace A039267.P2917375070155735121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A104249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039267.P2917375070155735121

/-!
# A039268: Numbers whose base-12 representation has the same number of 7's and 11's.

The programs for A039268, there is no canonical definition to state claims against.
-/

/-! ## A039268.P7546699582197373244

`lt[A379704(n+4), 4]`
-/

namespace A039268.P7546699582197373244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379704 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039268.P7546699582197373244

/-! ## A039268.P2388279188877158592

`lt[-A344233(n+1), A088439(n)]`
-/

namespace A039268.P2388279188877158592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039268.P2388279188877158592

/-! ## A039268.P11733490674231057762

`(A039217(n+1)-1)*A051731(2*(n+1)²)`
-/

namespace A039268.P11733490674231057762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039217 (n + 1) - 1) * A051731 (2 * (n + 1) ^ 2)

end

end A039268.P11733490674231057762

/-! ## A039268.P12111147885641928036

`A039217(n+1)-A057427(A055652(n))`
-/

namespace A039268.P12111147885641928036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (n + 1) - A057427 (A055652 n).toNat

end

end A039268.P12111147885641928036

/-! ## A039268.P11062247436885069971

`A039217(n+1)-A000034(A139596(n))`
-/

namespace A039268.P11062247436885069971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (n + 1) - A000034 (A139596 n).toNat

end

end A039268.P11062247436885069971

/-! ## A039268.P4839982980602274960

`A039217(n+1)-A057427(A094442(n))`
-/

namespace A039268.P4839982980602274960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (n + 1) - A057427 (A094442 n).toNat

end

end A039268.P4839982980602274960

/-! ## A039268.P9141585137680097155

`A153881(A043004(n+1))+A039217(n+1)`
-/

namespace A039268.P9141585137680097155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A043004 (n + 1)).toNat + A039217 (n + 1)

end

end A039268.P9141585137680097155

/-! ## A039268.P4451056470731012299

`A039217(n+1)-A000034(A054000(n+1))`
-/

namespace A039268.P4451056470731012299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (n + 1) - A000034 (A054000 (n + 1)).toNat

end

end A039268.P4451056470731012299

/-!
# A039269: Numbers whose base-12 representation has the same number of 8's and 9's.

The programs for A039269, there is no canonical definition to state claims against.
-/

/-! ## A039269.P17238697718838140643

`A102681(n)+∑[val(∏{p}[(1-2*n)*n², #], 10)]+n`
-/

namespace A039269.P17238697718838140643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A039269.P17238697718838140643

/-! ## A039269.P9524553760767347012

`A118759(A039271(n+1))+A102681(n)`
-/

namespace A039269.P9524553760767347012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A039271 (n + 1)).toNat + A102681 n

end

end A039269.P9524553760767347012

/-! ## A039269.P579368491063320508

`A102681(n)+A039218(n+1)-A008683(A131208(n+1))²`
-/

namespace A039269.P579368491063320508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n + (A039218 (n + 1) - A008683 (A131208 (n + 1)).toNat ^ 2)

end

end A039269.P579368491063320508

/-! ## A039269.P14110028117015347508

`lt[acot(A096606(n+5)), A010881(n+4)]`
-/

namespace A039269.P14110028117015347508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A096606 (n + 5) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A039269.P14110028117015347508

/-! ## A039269.P14445296964353489525

`lt[A167261(A167288(n+1)), A167280(n+4)]`
-/

namespace A039269.P14445296964353489525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167261 (A167288 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167280 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039269.P14445296964353489525

/-! ## A039269.P14300142888561013544

`lt[A167264(A167287(n+1)), A167280(n+4)]`
-/

namespace A039269.P14300142888561013544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167264 (A167287 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167280 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039269.P14300142888561013544

/-! ## A039269.P3666135178855189166

`lt[A151898(round((n-1)/2)+2), 9]`
-/

namespace A039269.P3666135178855189166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039269.P3666135178855189166

/-!
# A039270: Numbers whose base-12 representation has the same number of 8's and 10's.

The programs for A039270, there is no canonical definition to state claims against.
-/

/-! ## A039270.P7797724076217914467

`or(∑[val(∏{p}[(2*n-1)*n², #], 10)]+n, n%2)`
-/

namespace A039270.P7797724076217914467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j + n) (n % 2)

end

end A039270.P7797724076217914467

/-! ## A039270.P15430745643786059786

`val(n+1, 10)+∑[val(∏{p}[(2*n-1)*n², #], 10)]+n`
-/

namespace A039270.P15430745643786059786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10 + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A039270.P15430745643786059786

/-! ## A039270.P11648979293121103454

`A122840(n+1)+∑[val(∏{p}[(2*n-1)*n², #], 10)]+n`
-/

namespace A039270.P11648979293121103454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A039270.P11648979293121103454

/-! ## A039270.P12874232601544327830

`lt[A156199(n), A157339(n)]`
-/

namespace A039270.P12874232601544327830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039270.P12874232601544327830

/-! ## A039270.P12567144398142655328

`lt[A156227(n), A157339(n)]`
-/

namespace A039270.P12567144398142655328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039270.P12567144398142655328

/-! ## A039270.P15880433686104656354

`or(n%2, A118759(A039271(n+1)))`
-/

namespace A039270.P15880433686104656354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A118759 (A039271 (n + 1)).toNat)

end

end A039270.P15880433686104656354

/-! ## A039270.P11955020262034702180

`A118759(or(A000035(n), A039271(n+1)))`
-/

namespace A039270.P11955020262034702180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor (A000035 n) (A039271 (n + 1))).toNat

end

end A039270.P11955020262034702180

/-! ## A039270.P13449739691189351364

`A118759(or(A039271(n+1), A102681(n)))`
-/

namespace A039270.P13449739691189351364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor (A039271 (n + 1)) (A102681 n)).toNat

end

end A039270.P13449739691189351364

/-!
# A039271: Numbers whose base-12 representation has the same number of 8's and 11's.

The programs for A039271, there is no canonical definition to state claims against.
-/

/-! ## A039271.P2614331780799463692

`∑[val(∏{p}[(1-2*n)*n², #], 10)]+n`
-/

namespace A039271.P2614331780799463692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A039271.P2614331780799463692

/-! ## A039271.P11902429257744241661

`A118759(A039269(n+1)-A102681(n))`
-/

namespace A039271.P11902429257744241661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A039269 (n + 1) - A102681 n).toNat

end

end A039271.P11902429257744241661

/-! ## A039271.P3743809214454709914

`A039218(n+1)-A264981(A131208(n+1))`
-/

namespace A039271.P3743809214454709914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039218 (n + 1) - A264981 (A131208 (n + 1)).toNat

end

end A039271.P3743809214454709914

/-! ## A039271.P13392106652315687023

`A039218(n+1)-A192456(A264981(n+1))`
-/

namespace A039271.P13392106652315687023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039218 (n + 1) - A192456 (A264981 (n + 1)).toNat

end

end A039271.P13392106652315687023

/-! ## A039271.P9642180030100668021

`A039218(n+1)-ceil(A131208(n+1)/A000040(n+1))`
-/

namespace A039271.P9642180030100668021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039218 (n + 1) - ⌈(A131208 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A039271.P9642180030100668021

/-! ## A039271.P6810585187316160952

`lt[A020639(A000124(n+8)+2)-1, A161358(n+1)+2]`
-/

namespace A039271.P6810585187316160952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000124 (n + 8) + 2).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039271.P6810585187316160952

/-!
# A039272: Numbers whose base-12 representation has the same number of 9's and 10's.

The programs for A039272, there is no canonical definition to state claims against.
-/

/-! ## A039272.P14246980628763396834

`2*∑[A102683(n)^A334725(n+1)]+n`
-/

namespace A039272.P14246980628763396834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102683 n : ℚ) ^ (A334725 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℚ)

end

end A039272.P14246980628763396834

/-! ## A039272.P534282378080120908

`A102487(n+2)-A049240(A205301(n))`
-/

namespace A039272.P534282378080120908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 2) - A049240 (A205301 n).toNat

end

end A039272.P534282378080120908

/-! ## A039272.P16927924071834165679

`A102487(n+2)-A285097(A044407(n+1))`
-/

namespace A039272.P16927924071834165679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 2) - A285097 (A044407 (n + 1)).toNat

end

end A039272.P16927924071834165679

/-! ## A039272.P10630338788190243193

`lt[A059146(2*n+3), A059137(A059147(n))]`
-/

namespace A039272.P10630338788190243193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059146 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059137 (A059147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039272.P10630338788190243193

/-! ## A039272.P14699042262272671642

`∑[A001610(A102683(n)^A334725(n+1))]+n`
-/

namespace A039272.P14699042262272671642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (SequenceMachineLib.roundAway ((A102683 n : ℚ) ^ (A334725 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A039272.P14699042262272671642

/-! ## A039272.P9348683416119227340

`A039273(n+1)+A102683(n)^A334725(n+1)`
-/

namespace A039272.P9348683416119227340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039273 (n + 1) : ℚ) + (A102683 n : ℚ) ^ (A334725 (n + 1) : ℤ)

end

end A039272.P9348683416119227340

/-! ## A039272.P16701006444392663406

`A102683(n)+A039219(n+1)-A112049(A078371(n))`
-/

namespace A039272.P16701006444392663406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + (A039219 (n + 1) - A112049 (A078371 n).toNat)

end

end A039272.P16701006444392663406

/-! ## A039272.P10353168524385594089

`eq[A112050(n+2), A130658(n+1)]`
-/

namespace A039272.P10353168524385594089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039272.P10353168524385594089

/-! ## A039272.P4763694450535183042

`eq[A112049(n+2), A112050(n+2)]`
-/

namespace A039272.P4763694450535183042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039272.P4763694450535183042

/-! ## A039272.P5997716464047552952

`A008557(n+1)+A102487(n+2)-A008558(n+1)`
-/

namespace A039272.P5997716464047552952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008557 (n + 1) + (A102487 (n + 2) - A008558 (n + 1))

end

end A039272.P5997716464047552952

/-!
# A039273: Numbers whose base-12 representation has the same number of 9's and 11's.

The programs for A039273, there is no canonical definition to state claims against.
-/

/-! ## A039273.P6838290089106057770

`A039219(n+1)-A112049(A078371(n))`
-/

namespace A039273.P6838290089106057770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039219 (n + 1) - A112049 (A078371 n).toNat

end

end A039273.P6838290089106057770

/-! ## A039273.P6609619136349596331

`A039219(n+1)-A033630(A103579(n+1))`
-/

namespace A039273.P6609619136349596331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039219 (n + 1) - A033630 (A103579 (n + 1)).toNat

end

end A039273.P6609619136349596331

/-! ## A039273.P4807456752255083005

`A039219(n+1)-A014598(A334725(n+1))`
-/

namespace A039273.P4807456752255083005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039219 (n + 1) - A014598 (A334725 (n + 1)).toNat

end

end A039273.P4807456752255083005

/-! ## A039273.P10958828697297354370

`A039219(n+1)-A289508(A250742(n+2))`
-/

namespace A039273.P10958828697297354370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039219 (n + 1) - A289508 (A250742 (n + 2)).toNat

end

end A039273.P10958828697297354370

/-! ## A039273.P12629966203622678226

`lt[A040669(A051507(n+1)), A205184(n+2)]`
-/

namespace A039273.P12629966203622678226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040669 (A051507 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205184 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039273.P12629966203622678226

/-!
# A039274: Numbers whose base-12 representation has the same number of 10's and 11's.

The programs for A039274, there is no canonical definition to state claims against.
-/

/-! ## A039274.P9414038046261218061

`∪[A039558(n+1), A102487(n+1)]`
-/

namespace A039274.P9414038046261218061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039274.P9414038046261218061

/-! ## A039274.P4393838481625976842

`∪[A039558(n+1), comp[A102488(n+1)]]`
-/

namespace A039274.P4393838481625976842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039558 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102488 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A039274.P4393838481625976842

/-! ## A039274.P5287801653149872404

`floor(A171397(A000196(n²))+n/10)`
-/

namespace A039274.P5287801653149872404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171397 (A000196 (n ^ 2)).toNat : ℚ) + (n : ℚ) / 10⌋

end

end A039274.P5287801653149872404

/-!
# A039275: Numbers whose base-3 representation has the same nonzero number of 0's and 1's.

The programs for A039275, the canonical program `A039275.P15863930487508184541` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039275 has offset 1).

The definition of A039275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039275.P15863930487508184541

`filter[A039000(n+1), A316829(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039275

/-- `filter[A039000(n+1), A316829(#)]` -/
def P15863930487508184541.Spec : Prop :=
  ∀ n, P15863930487508184541.a n = A039275 (n + 1)

theorem P15863930487508184541.correct : P15863930487508184541.Spec := by
  intro n
  simp only [A039275, Nat.add_sub_cancel]

end A039275

/-! ## A039275.P8765710156963732612

`∩[A037372(n+1), A039000(n+1)]`
-/

namespace A039275.P8765710156963732612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039275.P8765710156963732612

namespace A039275

/-- `∩[A037372(n+1), A039000(n+1)]` -/
def P8765710156963732612.Spec : Prop :=
  ∀ n, (P8765710156963732612.a n : ℤ) = A039275 (n + 1)

end A039275

/-! ## A039275.P8904416057622802774

`∩[A039000(n+1), A081605(n+1)]`
-/

namespace A039275.P8904416057622802774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039275.P8904416057622802774

namespace A039275

/-- `∩[A039000(n+1), A081605(n+1)]` -/
def P8904416057622802774.Spec : Prop :=
  ∀ n, (P8904416057622802774.a n : ℤ) = A039275 (n + 1)

end A039275

/-! ## A039275.P12921817018605936776

`∩[A039000(n+1), A081606(n+1)]`
-/

namespace A039275.P12921817018605936776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039275.P12921817018605936776

namespace A039275

/-- `∩[A039000(n+1), A081606(n+1)]` -/
def P12921817018605936776.Spec : Prop :=
  ∀ n, (P12921817018605936776.a n : ℤ) = A039275 (n + 1)

end A039275

/-! ## A039275.P17189111225002311373

`lt[A309953(n), char[A039000(n+1)]]`
-/

namespace A039275.P17189111225002311373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039275.P17189111225002311373

namespace A039275

/-- `lt[A309953(n), char[A039000(n+1)]]` -/
def P17189111225002311373.Spec : Prop :=
  ∀ n, (P17189111225002311373.a n : ℤ) = A039275 (n + 1)

end A039275

/-! ## A039275.P9149829934573933240

`eq[A290825(n)+A062756(n), A077267(n)]`
-/

namespace A039275.P9149829934573933240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n + A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039275.P9149829934573933240

namespace A039275

/-- `eq[A290825(n)+A062756(n), A077267(n)]` -/
def P9149829934573933240.Spec : Prop :=
  ∀ n, (P9149829934573933240.a n : ℤ) = A039275 (n + 1)

end A039275

/-! ## A039275.P213983180586874315

`eq[A309953(n)+A062756(n), A077267(n)]`
-/

namespace A039275.P213983180586874315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n + A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039275.P213983180586874315

namespace A039275

/-- `eq[A309953(n)+A062756(n), A077267(n)]` -/
def P213983180586874315.Spec : Prop :=
  ∀ n, (P213983180586874315.a n : ℤ) = A039275 (n + 1)

end A039275

/-!
# A039276: Numbers whose base-3 representation has the same nonzero number of 0's and 2's.

The programs for A039276, the canonical program `A039276.P4466623649426209317` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039276 has offset 1).

The definition of A039276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039276.P4466623649426209317

`∩[A031452(n+1), A081605(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039276

/-- `∩[A031452(n+1), A081605(n+1)]` -/
def P4466623649426209317.Spec : Prop :=
  ∀ n, (P4466623649426209317.a n : ℤ) = A039276 (n + 1)

theorem P4466623649426209317.correct : P4466623649426209317.Spec := by
  intro n
  simp only [A039276, Nat.add_sub_cancel]

end A039276

/-! ## A039276.P6100044940884023869

`∩[A031452(n+1), A074940(n+1)]`
-/

namespace A039276.P6100044940884023869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039276.P6100044940884023869

namespace A039276

/-- `∩[A031452(n+1), A074940(n+1)]` -/
def P6100044940884023869.Spec : Prop :=
  ∀ n, (P6100044940884023869.a n : ℤ) = A039276 (n + 1)

end A039276

/-! ## A039276.P4253052541908413791

`eq[A039966(n), A171960(A319803(n))]`
-/

namespace A039276.P4253052541908413791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A319803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039276.P4253052541908413791

namespace A039276

/-- `eq[A039966(n), A171960(A319803(n))]` -/
def P4253052541908413791.Spec : Prop :=
  ∀ n, (P4253052541908413791.a n : ℤ) = A039276 (n + 1)

end A039276

/-! ## A039276.P17470490482659031704

`eq[A113047(n), A171960(A319803(n))]`
-/

namespace A039276.P17470490482659031704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A319803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039276.P17470490482659031704

namespace A039276

/-- `eq[A113047(n), A171960(A319803(n))]` -/
def P17470490482659031704.Spec : Prop :=
  ∀ n, (P17470490482659031704.a n : ℤ) = A039276 (n + 1)

end A039276

/-! ## A039276.P10824527712527373176

`eq[A171960(A319803(n)), A290825(n)]`
-/

namespace A039276.P10824527712527373176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A319803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039276.P10824527712527373176

namespace A039276

/-- `eq[A171960(A319803(n)), A290825(n)]` -/
def P10824527712527373176.Spec : Prop :=
  ∀ n, (P10824527712527373176.a n : ℤ) = A039276 (n + 1)

end A039276

/-! ## A039276.P17288796515860967489

`eq[A171960(A319803(n)), A309953(n)]`
-/

namespace A039276.P17288796515860967489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A319803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039276.P17288796515860967489

namespace A039276

/-- `eq[A171960(A319803(n)), A309953(n)]` -/
def P17288796515860967489.Spec : Prop :=
  ∀ n, (P17288796515860967489.a n : ℤ) = A039276 (n + 1)

end A039276

/-!
# A039277: Numbers whose base-4 representation has the same nonzero number of 0's and 1's.

The programs for A039277, there is no canonical definition to state claims against.
-/

/-! ## A039277.P15596186599992956950

`∩[A037373(n+1), A039002(n+1)]`
-/

namespace A039277.P15596186599992956950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039277.P15596186599992956950

/-! ## A039277.P1801475588580285420

`∩[A039002(n+1), A196032(n+1)]`
-/

namespace A039277.P1801475588580285420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039277.P1801475588580285420

/-! ## A039277.P9071357031072033615

`∩[A004753(n+1), A039002(n+1)]`
-/

namespace A039277.P9071357031072033615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039277.P9071357031072033615

/-! ## A039277.P15356024242907972287

`A045019(A032555(n+1))`
-/

namespace A039277.P15356024242907972287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045019 (A032555 (n + 1)).toNat

end

end A039277.P15356024242907972287

/-! ## A039277.P1373696582762734281

`A045019(A032559(n+1))`
-/

namespace A039277.P1373696582762734281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045019 (A032559 (n + 1)).toNat

end

end A039277.P1373696582762734281

/-!
# A039278: Numbers whose base-4 representation has the same nonzero number of 0's and 2's.

The programs for A039278, there is no canonical definition to state claims against.
-/

/-! ## A039278.P7628142795647018577

`∩[A039003(n+1), A196032(n+1)]`
-/

namespace A039278.P7628142795647018577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039278.P7628142795647018577

/-! ## A039278.P1220574474468687373

`∩[A004753(n+1), A039003(n+1)]`
-/

namespace A039278.P1220574474468687373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039278.P1220574474468687373

/-! ## A039278.P17121838489289854851

`∩[A039003(n+1), A247875(n+1)]`
-/

namespace A039278.P17121838489289854851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039278.P17121838489289854851

/-! ## A039278.P3267189281187648016

`A045043(∑[∑[A076710(n)]])`
-/

namespace A039278.P3267189281187648016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045043 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039278.P3267189281187648016

/-! ## A039278.P12920111725153292557

`A056622(A045043(n+1)²)`
-/

namespace A039278.P12920111725153292557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A045043 (n + 1) ^ 2).toNat

end

end A039278.P12920111725153292557

/-!
# A039279: Numbers whose base-4 representation has the same nonzero number of 0's and 3's.

The programs for A039279, the canonical program `A039279.P4771137680369596052` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039279 has offset 1).

The definition of A039279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2638 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039279.P4771137680369596052

`∩[A031461(n+1), A196032(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A039279

/-- `∩[A031461(n+1), A196032(n+1)]` -/
def P4771137680369596052.Spec : Prop :=
  ∀ n, (P4771137680369596052.a n : ℤ) = A039279 (n + 1)

theorem P4771137680369596052.correct : P4771137680369596052.Spec := by
  intro n
  simp only [A039279, Nat.add_sub_cancel]

end A039279

/-! ## A039279.P6667304247886874332

`∩[A031461(n+1), A337250(n+1)]`
-/

namespace A039279.P6667304247886874332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039279.P6667304247886874332

namespace A039279

/-- `∩[A031461(n+1), A337250(n+1)]` -/
def P6667304247886874332.Spec : Prop :=
  ∀ n, (P6667304247886874332.a n : ℤ) = A039279 (n + 1)

end A039279

/-! ## A039279.P10127400515431528519

`A045067(n+1)%A352542(n)`
-/

namespace A039279.P10127400515431528519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045067 (n + 1)) (A352542 n)

end

end A039279.P10127400515431528519

namespace A039279

/-- `A045067(n+1)%A352542(n)` -/
def P10127400515431528519.Spec : Prop :=
  ∀ n, P10127400515431528519.a n = A039279 (n + 1)

end A039279

/-! ## A039279.P11577593585871648204

`A045067(n+1)+A000007(A000041(n))`
-/

namespace A039279.P11577593585871648204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045067 (n + 1) + A000007 (A000041 n).toNat

end

end A039279.P11577593585871648204

namespace A039279

/-- `A045067(n+1)+A000007(A000041(n))` -/
def P11577593585871648204.Spec : Prop :=
  ∀ n, P11577593585871648204.a n = A039279 (n + 1)

end A039279

/-! ## A039279.P8042051226580592136

`A045067(n+1)+A000007(A359320(n))`
-/

namespace A039279.P8042051226580592136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045067 (n + 1) + A000007 (A359320 n).toNat

end

end A039279.P8042051226580592136

namespace A039279

/-- `A045067(n+1)+A000007(A359320(n))` -/
def P8042051226580592136.Spec : Prop :=
  ∀ n, P8042051226580592136.a n = A039279 (n + 1)

end A039279

/-!
# A039280: Numbers whose base-4 representation has the same nonzero number of 1's and 2's.

The programs for A039280, there is no canonical definition to state claims against.
-/

/-! ## A039280.P15278369824913697110

`eq[A000007(A292371(n)), A065359(n)]`
-/

namespace A039280.P15278369824913697110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A292371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P15278369824913697110

/-! ## A039280.P4527937859183104758

`lt[lcm(n, A065359(n)), A332205(n)]`
-/

namespace A039280.P4527937859183104758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A065359 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039280.P4527937859183104758

/-! ## A039280.P13158604508091864938

`eq[A065359(n), A102283(A268444(n))]`
-/

namespace A039280.P13158604508091864938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P13158604508091864938

/-! ## A039280.P14598132727503818351

`eq[A065359(n), A130706(A005536(n))]`
-/

namespace A039280.P14598132727503818351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A005536 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P14598132727503818351

/-! ## A039280.P7872879754388483601

`eq[n-3*A123087(n), A169585(A005536(n))]`
-/

namespace A039280.P7872879754388483601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A123087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A005536 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P7872879754388483601

/-! ## A039280.P883269530764757994

`eq[n-3*A123087(n), A000007(A292371(n))]`
-/

namespace A039280.P883269530764757994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A123087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P883269530764757994

/-! ## A039280.P5341471565768072217

`lt[n%3, A316345(n)]`
-/

namespace A039280.P5341471565768072217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039280.P5341471565768072217

/-! ## A039280.P10264321037854935637

`eq[1, A316345(A088439(n))]`
-/

namespace A039280.P10264321037854935637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A088439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039280.P10264321037854935637

/-! ## A039280.P14513731060057997455

`filter[A008486(n), A316345(#)]`
-/

namespace A039280.P14513731060057997455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316345 (f1 j).toNat = 1) n)

end

end A039280.P14513731060057997455

/-! ## A039280.P10620604442713524880

`filter[A008585(n), A316345(#)]`
-/

namespace A039280.P10620604442713524880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316345 (f1 j).toNat = 1) n)

end

end A039280.P10620604442713524880

/-! ## A039280.P15207748061899524626

`filter[A088439(n), A316345(#)]`
-/

namespace A039280.P15207748061899524626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316345 (f1 j).toNat = 1) n)

end

end A039280.P15207748061899524626

/-! ## A039280.P3290595147460916889

`filter[A296515(n), A316345(#)]`
-/

namespace A039280.P3290595147460916889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316345 (f1 j).toNat = 1) n)

end

end A039280.P3290595147460916889

/-! ## A039280.P11660029054241500035

`eq[A010882(n), A316345(n)]`
-/

namespace A039280.P11660029054241500035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P11660029054241500035

/-! ## A039280.P1264380624651750574

`eq[A069705(n), A316345(n)]`
-/

namespace A039280.P1264380624651750574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P1264380624651750574

/-! ## A039280.P5535018351380549352

`eq[A070403(n), A316345(n)]`
-/

namespace A039280.P5535018351380549352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P5535018351380549352

/-! ## A039280.P193786434104693559

`eq[A070421(n), A316345(n)]`
-/

namespace A039280.P193786434104693559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070421 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P193786434104693559

/-! ## A039280.P10663824292522266625

`eq[A085068(n), A316345(n)]`
-/

namespace A039280.P10663824292522266625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P10663824292522266625

/-! ## A039280.P3937683898344399743

`eq[A100402(n), A316345(n)]`
-/

namespace A039280.P3937683898344399743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P3937683898344399743

/-! ## A039280.P12090009143604965278

`eq[A101685(n), A316345(n)]`
-/

namespace A039280.P12090009143604965278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P12090009143604965278

/-! ## A039280.P12522915545992573445

`eq[A130196(n), A316345(n)]`
-/

namespace A039280.P12522915545992573445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039280.P12522915545992573445

/-!
# A039281: Numbers whose base-4 representation has the same nonzero number of 1's and 3's.

The programs for A039281, there is no canonical definition to state claims against.
-/

/-! ## A039281.P16096297504712503220

`∩[A039005(n+1), A337250(n+1)]`
-/

namespace A039281.P16096297504712503220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039281.P16096297504712503220

/-! ## A039281.P12713149907267819092

`∩[A004780(n+1), A039005(n+1)]`
-/

namespace A039281.P12713149907267819092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039281.P12713149907267819092

/-! ## A039281.P15940755104890338452

`∩[A039005(n+1), A356844(n+1)]`
-/

namespace A039281.P15940755104890338452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039281.P15940755104890338452

/-! ## A039281.P11967408065256315878

`eq[A065359(A163241(n)), A174026(n+1)]`
-/

namespace A039281.P11967408065256315878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A163241 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039281.P11967408065256315878

/-! ## A039281.P7253923027375007772

`eq[4, A059036(A276190(n))]`
-/

namespace A039281.P7253923027375007772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 (A276190 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039281.P7253923027375007772

/-!
# A039282: Numbers whose base-4 representation has the same nonzero number of 2's and 3's.

The programs for A039282, there is no canonical definition to state claims against.
-/

/-! ## A039282.P1247882768618533649

`∩[A039006(n+1), A337250(n+1)]`
-/

namespace A039282.P1247882768618533649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039282.P1247882768618533649

/-! ## A039282.P12004067348648750506

`∩[A004780(n+1), A039006(n+1)]`
-/

namespace A039282.P12004067348648750506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039282.P12004067348648750506

/-! ## A039282.P15676242987098665163

`lt[A338863(A338854(n)+1), 2]`
-/

namespace A039282.P15676242987098665163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A338854 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039282.P15676242987098665163

/-! ## A039282.P8239774952483493141

`record[abs(A328749(A039378(n+1)))]`
-/

namespace A039282.P8239774952483493141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328749 (A039378 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039282.P8239774952483493141

/-! ## A039282.P14942120350836706772

`record[A328749(2*A039378(n+1))]`
-/

namespace A039282.P14942120350836706772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (2 * A039378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039282.P14942120350836706772

/-! ## A039282.P13713683753078041428

`lt[A348835(A338854(n)), A139352(n)]`
-/

namespace A039282.P13713683753078041428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348835 (A338854 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039282.P13713683753078041428

/-!
# A039283: Numbers whose base-5 representation has the same nonzero number of 0's and 1's.

The programs for A039283, there is no canonical definition to state claims against.
-/

/-! ## A039283.P8009422249091553885

`∩[A037374(n+1), A039007(n+1)]`
-/

namespace A039283.P8009422249091553885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039283.P8009422249091553885

/-! ## A039283.P5846349886809371740

`∩[A039007(n+1), A382415(n+1)]`
-/

namespace A039283.P5846349886809371740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039283.P5846349886809371740

/-! ## A039283.P4225879570290154055

`A045162(n+1)%p?[7*n^3+n+1]`
-/

namespace A039283.P4225879570290154055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045162 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A039283.P4225879570290154055

/-! ## A039283.P10402374198107515017

`A331362(A045162(n+1)²)`
-/

namespace A039283.P10402374198107515017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A045162 (n + 1) ^ 2).toNat

end

end A039283.P10402374198107515017

/-! ## A039283.P4300594104429938812

`record[A045162(A194968(n+1))]`
-/

namespace A039283.P4300594104429938812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045162 (A194968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039283.P4300594104429938812

/-!
# A039284: Numbers whose base-5 representation has the same nonzero number of 0's and 2's.

The programs for A039284, there is no canonical definition to state claims against.
-/

/-! ## A039284.P9190513763381992347

`∩[A039008(n+1), A382415(n+1)]`
-/

namespace A039284.P9190513763381992347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039284.P9190513763381992347

/-! ## A039284.P6238096337986450416

`A045177(n+1)-A025437(A185255(n))`
-/

namespace A039284.P6238096337986450416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045177 (n + 1) - A025437 (A185255 n).toNat

end

end A039284.P6238096337986450416

/-! ## A039284.P17031603379422732449

`A045177(n+1)%A046004(n+1)`
-/

namespace A039284.P17031603379422732449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045177 (n + 1)) (A046004 (n + 1))

end

end A039284.P17031603379422732449

/-! ## A039284.P3988774765688455874

`or(A000038(∑[n²]), A045177(n+1))`
-/

namespace A039284.P3988774765688455874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (∑ j ∈ Finset.range (n + 1), f1 j)) (A045177 (n + 1))

end

end A039284.P3988774765688455874

/-! ## A039284.P13713271436178364387

`A045177(n+1)+A007814(A022166(n))`
-/

namespace A039284.P13713271436178364387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045177 (n + 1) + A007814 (A022166 n).toNat

end

end A039284.P13713271436178364387

/-!
# A039285: Numbers whose base-5 representation has the same nonzero number of 0's and 3's.

The programs for A039285, the canonical program `A039285.P4990860470344623038` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039285 has offset 1).

The definition of A039285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039285.P4990860470344623038

`∩[A039009(n+1), A382415(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039285

/-- `∩[A039009(n+1), A382415(n+1)]` -/
def P4990860470344623038.Spec : Prop :=
  ∀ n, (P4990860470344623038.a n : ℤ) = A039285 (n + 1)

theorem P4990860470344623038.correct : P4990860470344623038.Spec := by
  intro n
  simp only [A039285, Nat.add_sub_cancel]

end A039285

/-! ## A039285.P17267643436786154284

`A107999(n+1)%2*A045192(n+1)`
-/

namespace A039285.P17267643436786154284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107999 (n + 1)) 2 * A045192 (n + 1)

end

end A039285.P17267643436786154284

namespace A039285

/-- `A107999(n+1)%2*A045192(n+1)` -/
def P17267643436786154284.Spec : Prop :=
  ∀ n, P17267643436786154284.a n = A039285 (n + 1)

end A039285

/-! ## A039285.P10528609443913271190

`A045192(n+1)+A000007(A008459(n))`
-/

namespace A039285.P10528609443913271190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045192 (n + 1) + A000007 (A008459 n).toNat

end

end A039285.P10528609443913271190

namespace A039285

/-- `A045192(n+1)+A000007(A008459(n))` -/
def P10528609443913271190.Spec : Prop :=
  ∀ n, P10528609443913271190.a n = A039285 (n + 1)

end A039285

/-! ## A039285.P8979073999523756579

`A045192(n+1)+A019590(A107999(n+1))`
-/

namespace A039285.P8979073999523756579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045192 (n + 1) + A019590 (A107999 (n + 1)).toNat

end

end A039285.P8979073999523756579

namespace A039285

/-- `A045192(n+1)+A019590(A107999(n+1))` -/
def P8979073999523756579.Spec : Prop :=
  ∀ n, P8979073999523756579.a n = A039285 (n + 1)

end A039285

/-! ## A039285.P3381375636990566251

`A045192(n+1)+A019590(A335352(n+1))`
-/

namespace A039285.P3381375636990566251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045192 (n + 1) + A019590 (A335352 (n + 1)).toNat

end

end A039285.P3381375636990566251

namespace A039285

/-- `A045192(n+1)+A019590(A335352(n+1))` -/
def P3381375636990566251.Spec : Prop :=
  ∀ n, P3381375636990566251.a n = A039285 (n + 1)

end A039285

/-!
# A039286: Numbers whose base-5 representation has the same nonzero number of 0's and 4's.

The programs for A039286, there is no canonical definition to state claims against.
-/

/-! ## A039286.P15802204486269792701

`∩[A031470(n+1), A382415(n+1)]`
-/

namespace A039286.P15802204486269792701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039286.P15802204486269792701

/-! ## A039286.P16518794803306569745

`∩[A031470(n+1), A337572(n+1)]`
-/

namespace A039286.P16518794803306569745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039286.P16518794803306569745

/-! ## A039286.P16550630096045253318

`A045207(n+1)%A249502(n+2)`
-/

namespace A039286.P16550630096045253318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045207 (n + 1)) (A249502 (n + 2))

end

end A039286.P16550630096045253318

/-! ## A039286.P2106823357310842119

`lcm(A020985(A096765(n)), A045207(n+1))`
-/

namespace A039286.P2106823357310842119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 (A096765 n).toNat) (A045207 (n + 1))

end

end A039286.P2106823357310842119

/-! ## A039286.P1895314022399744600

`A045207(n+1)+A000007(A055600(n+1))`
-/

namespace A039286.P1895314022399744600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045207 (n + 1) + A000007 (A055600 (n + 1)).toNat

end

end A039286.P1895314022399744600

/-! ## A039286.P9483778579241600849

`A045207(n+1)+A000007(A094280(n+1))`
-/

namespace A039286.P9483778579241600849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045207 (n + 1) + A000007 (A094280 (n + 1)).toNat

end

end A039286.P9483778579241600849

/-! ## A039286.P13408075629133339871

`A045207(n+1)+A000038(A326229(n+1))`
-/

namespace A039286.P13408075629133339871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045207 (n + 1) + A000038 (A326229 (n + 1)).toNat

end

end A039286.P13408075629133339871

/-! ## A039286.P932204602919803042

`A045207(n+1)^A093818(A045211(n+1))`
-/

namespace A039286.P932204602919803042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045207 (n + 1) : ℚ) ^ (A093818 (A045211 (n + 1)).toNat : ℤ)

end

end A039286.P932204602919803042

/-!
# A039287: Numbers whose base-5 representation has the same nonzero number of 1's and 2's.

The programs for A039287, there is no canonical definition to state claims against.
-/

/-! ## A039287.P12670253922711768927

`A045222(n+1)%A333112(n+4)`
-/

namespace A039287.P12670253922711768927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045222 (n + 1)) (A333112 (n + 4))

end

end A039287.P12670253922711768927

/-! ## A039287.P14960381247468547425

`A045222(n+1)+A000007(A204856(n))`
-/

namespace A039287.P14960381247468547425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045222 (n + 1) + A000007 (A204856 n).toNat

end

end A039287.P14960381247468547425

/-! ## A039287.P15490063364806672950

`A045222(n+1)^A007318(A132062(n))`
-/

namespace A039287.P15490063364806672950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045222 (n + 1) : ℚ) ^ (A007318 (A132062 n).toNat : ℤ)

end

end A039287.P15490063364806672950

/-! ## A039287.P2794923149958060235

`A353348(A065507(n+1))+A045222(n+1)`
-/

namespace A039287.P2794923149958060235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (A065507 (n + 1)).toNat + A045222 (n + 1)

end

end A039287.P2794923149958060235

/-! ## A039287.P7203651379273924547

`A045222(n+1)*A356936(A008578(n+1))`
-/

namespace A039287.P7203651379273924547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045222 (n + 1) * A356936 (A008578 (n + 1)).toNat

end

end A039287.P7203651379273924547

/-!
# A039288: Numbers whose base-5 representation has the same nonzero number of 1's and 3's.

The programs for A039288, there is no canonical definition to state claims against.
-/

/-! ## A039288.P5897143718871858683

`A045237(n+1)%A046049(n+1)`
-/

namespace A039288.P5897143718871858683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045237 (n + 1)) (A046049 (n + 1))

end

end A039288.P5897143718871858683

/-! ## A039288.P15588031964911175517

`A240467(A094236(n))+A045237(n+1)`
-/

namespace A039288.P15588031964911175517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A094236 n).toNat + A045237 (n + 1)

end

end A039288.P15588031964911175517

/-! ## A039288.P10489670657568483759

`A045237(n+1)^A007318(A090181(n))`
-/

namespace A039288.P10489670657568483759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045237 (n + 1) : ℚ) ^ (A007318 (A090181 n).toNat : ℤ)

end

end A039288.P10489670657568483759

/-! ## A039288.P15750407835828651207

`A001055(A293658(n+1))*A045237(n+1)`
-/

namespace A039288.P15750407835828651207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A293658 (n + 1)).toNat * A045237 (n + 1)

end

end A039288.P15750407835828651207

/-! ## A039288.P7690005297356792505

`A325280(A000217(2*(n+2)))+A045237(n+1)`
-/

namespace A039288.P7690005297356792505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (A000217 (2 * (n + 2))).toNat + A045237 (n + 1)

end

end A039288.P7690005297356792505

/-!
# A039289: Numbers whose base-5 representation has the same nonzero number of 1's and 4's.

The programs for A039289, there is no canonical definition to state claims against.
-/

/-! ## A039289.P12149534996222342192

`∩[A039012(n+1), A337572(n+1)]`
-/

namespace A039289.P12149534996222342192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039289.P12149534996222342192

/-! ## A039289.P3984730501089107752

`A045252(n+1)%A046049(n+1)`
-/

namespace A039289.P3984730501089107752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045252 (n + 1)) (A046049 (n + 1))

end

end A039289.P3984730501089107752

/-! ## A039289.P13475960821426869642

`A045252(n+1)*A057427(A027383(n))`
-/

namespace A039289.P13475960821426869642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045252 (n + 1) * A057427 (A027383 n).toNat

end

end A039289.P13475960821426869642

/-! ## A039289.P9104469083023566617

`A045252(n+1)%A045213(A117791(n))`
-/

namespace A039289.P9104469083023566617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045252 (n + 1)) (A045213 (A117791 n).toNat)

end

end A039289.P9104469083023566617

/-! ## A039289.P6106257749842254559

`∩[A023738(n+1), A137469(n+1)]`
-/

namespace A039289.P6106257749842254559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039289.P6106257749842254559

/-!
# A039290: Numbers whose base-5 representation has the same nonzero number of 2's and 3's.

The programs for A039290, there is no canonical definition to state claims against.
-/

/-! ## A039290.P11450405970822900816

`A052410(A045267(n+1)²)`
-/

namespace A039290.P11450405970822900816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A045267 (n + 1) ^ 2).toNat

end

end A039290.P11450405970822900816

/-! ## A039290.P10011885347481285105

`A052410(A045267(n+1)^(2-char[∑[n]]))`
-/

namespace A039290.P10011885347481285105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway ((A045267 (n + 1) : ℚ) ^ (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A039290.P10011885347481285105

/-! ## A039290.P718864912493347563

`A045267(n+1)+A000007(A006137(n))`
-/

namespace A039290.P718864912493347563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045267 (n + 1) + A000007 (A006137 n).toNat

end

end A039290.P718864912493347563

/-! ## A039290.P5710083855336047464

`A080224(A324702(n+1))+A045267(n+1)`
-/

namespace A039290.P5710083855336047464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A324702 (n + 1)).toNat + A045267 (n + 1)

end

end A039290.P5710083855336047464

/-! ## A039290.P10273036851882355266

`lcm(A045267(n+1), A123271(n+2))`
-/

namespace A039290.P10273036851882355266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045267 (n + 1)) (A123271 (n + 2))

end

end A039290.P10273036851882355266

/-!
# A039291: Numbers whose base-5 representation has the same nonzero number of 2's and 4's.

The programs for A039291, there is no canonical definition to state claims against.
-/

/-! ## A039291.P2999566379325227132

`∩[A039014(n+1), A337572(n+1)]`
-/

namespace A039291.P2999566379325227132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039291.P2999566379325227132

/-! ## A039291.P2365924222874139000

`A045282(n+1)%A028810(n+1)²`
-/

namespace A039291.P2365924222874139000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045282 (n + 1)) (A028810 (n + 1) ^ 2)

end

end A039291.P2365924222874139000

/-! ## A039291.P13134373210179873904

`A045282(n+1)+A000038(A117317(n))`
-/

namespace A039291.P13134373210179873904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045282 (n + 1) + A000038 (A117317 n).toNat

end

end A039291.P13134373210179873904

/-! ## A039291.P5738428552080817495

`A129251(A142346(n+1))+A045282(n+1)`
-/

namespace A039291.P5738428552080817495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A142346 (n + 1)).toNat + A045282 (n + 1)

end

end A039291.P5738428552080817495

/-! ## A039291.P9202969401710757

`A045282(n+1)*A057427(A070793(n+1))`
-/

namespace A039291.P9202969401710757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045282 (n + 1) * A057427 (A070793 (n + 1)).toNat

end

end A039291.P9202969401710757

/-!
# A039292: Numbers whose base-5 representation has the same nonzero number of 3's and 4's.

The programs for A039292, there is no canonical definition to state claims against.
-/

/-! ## A039292.P12965781767383933338

`∩[A039015(n+1), A337572(n+1)]`
-/

namespace A039292.P12965781767383933338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039292.P12965781767383933338

/-! ## A039292.P7070587201327277585

`lcm(A045297(n+1), A319117(n+2))`
-/

namespace A039292.P7070587201327277585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045297 (n + 1)) (A319117 (n + 2))

end

end A039292.P7070587201327277585

/-! ## A039292.P5278217165035094261

`A045297(n+1)%A002997(A327717(n))`
-/

namespace A039292.P5278217165035094261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045297 (n + 1)) (A002997 (A327717 n).toNat)

end

end A039292.P5278217165035094261

/-! ## A039292.P1961537896792994716

`A185012(A362936(2*(n+1)))+A045297(n+1)`
-/

namespace A039292.P1961537896792994716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A362936 (2 * (n + 1))).toNat + A045297 (n + 1)

end

end A039292.P1961537896792994716

/-! ## A039292.P9427568549794671555

`A045297(n+1)*A090740(A362936(2*(n+1))+1)`
-/

namespace A039292.P9427568549794671555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045297 (n + 1) * A090740 (A362936 (2 * (n + 1)) + 1).toNat

end

end A039292.P9427568549794671555

/-! ## A039292.P11821532100897483379

`A045297(n+1)+A005882(A158035(n+1))`
-/

namespace A039292.P11821532100897483379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045297 (n + 1) + A005882 (A158035 (n + 1)).toNat

end

end A039292.P11821532100897483379

/-! ## A039292.P4434555445056907097

`or(A010815(A002113(3*n+1)), A045297(n+1))`
-/

namespace A039292.P4434555445056907097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 (A002113 (3 * n + 1)).toNat) (A045297 (n + 1))

end

end A039292.P4434555445056907097

/-! ## A039292.P14756541876299929614

`A045297(n+1)*A057427(A043352(n+1))`
-/

namespace A039292.P14756541876299929614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045297 (n + 1) * A057427 (A043352 (n + 1)).toNat

end

end A039292.P14756541876299929614

/-!
# A039293: Numbers whose base-6 representation has the same nonzero number of 0's and 1's.

The programs for A039293, there is no canonical definition to state claims against.
-/

/-! ## A039293.P15042322715143544512

`∩[A037375(n+1), A039016(n+1)]`
-/

namespace A039293.P15042322715143544512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039293.P15042322715143544512

/-! ## A039293.P15508230505550115009

`∩[A039016(n+1), A382416(n+1)]`
-/

namespace A039293.P15508230505550115009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039293.P15508230505550115009

/-!
# A039294: Numbers whose base-6 representation has the same nonzero number of 0's and 2's.

The programs for A039294, there is no canonical definition to state claims against.
-/

/-! ## A039294.P3295169444031239818

`∩[A039017(n+1), A382416(n+1)]`
-/

namespace A039294.P3295169444031239818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039294.P3295169444031239818

/-! ## A039294.P1782681389267212721

`∩[A039017(n+1), comp[A248910(n+1)]]`
-/

namespace A039294.P1782681389267212721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248910 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A039294.P1782681389267212721

/-!
# A039295: Numbers whose base-6 representation has the same nonzero number of 0's and 3's.

The programs for A039295, there is no canonical definition to state claims against.
-/

/-! ## A039295.P8638754773885213994

`∩[A039018(n+1), A382416(n+1)]`
-/

namespace A039295.P8638754773885213994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039295.P8638754773885213994

/-! ## A039295.P9554739157101251077

`A037465(A045192(n+1)*A290556(n))`
-/

namespace A039295.P9554739157101251077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A045192 (n + 1) * A290556 n).toNat

end

end A039295.P9554739157101251077

/-! ## A039295.P3886981450632959750

`A037465(A045192(n+1)^A290556(n))`
-/

namespace A039295.P3886981450632959750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A045192 (n + 1) : ℚ) ^ (A290556 n : ℤ))).toNat

end

end A039295.P3886981450632959750

/-!
# A039296: Numbers whose base-6 representation has the same nonzero number of 0's and 4's.

The programs for A039296, there is no canonical definition to state claims against.
-/

/-! ## A039296.P13779282389631407499

`∩[A039019(n+1), A382416(n+1)]`
-/

namespace A039296.P13779282389631407499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039296.P13779282389631407499

/-! ## A039296.P18360879745792710251

`A043119(n+1)+A014707(A012408(n))`
-/

namespace A039296.P18360879745792710251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043119 (n + 1) + A014707 (A012408 n).toNat

end

end A039296.P18360879745792710251

/-! ## A039296.P17878527667965531815

`A043119(n+1)+A025466(A002450(n))`
-/

namespace A039296.P17878527667965531815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043119 (n + 1) + A025466 (A002450 n).toNat

end

end A039296.P17878527667965531815

/-! ## A039296.P15457807424722504740

`A043119(n+1)+A025466(A061602(n))`
-/

namespace A039296.P15457807424722504740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043119 (n + 1) + A025466 (A061602 n).toNat

end

end A039296.P15457807424722504740

/-!
# A039297: Numbers whose base-6 representation has the same nonzero number of 0's and 5's.

The programs for A039297, there is no canonical definition to state claims against.
-/

/-! ## A039297.P9228112664638408126

`∩[A031477(n+1), A382416(n+1)]`
-/

namespace A039297.P9228112664638408126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039297.P9228112664638408126

/-! ## A039297.P203634102026537650

`∩[A031477(n+1), A333656(n+1)]`
-/

namespace A039297.P203634102026537650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039297.P203634102026537650

/-! ## A039297.P16026837566155841929

`A043120(n+1)+A011765(A041471(n))`
-/

namespace A039297.P16026837566155841929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043120 (n + 1) + A011765 (A041471 n).toNat

end

end A039297.P16026837566155841929

/-! ## A039297.P10186648629315736205

`A185284(A001590(n))+A043120(n+1)`
-/

namespace A039297.P10186648629315736205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A001590 n).toNat + A043120 (n + 1)

end

end A039297.P10186648629315736205

/-! ## A039297.P17349976247493620860

`A185284(A003592(n+1))+A043120(n+1)`
-/

namespace A039297.P17349976247493620860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A003592 (n + 1)).toNat + A043120 (n + 1)

end

end A039297.P17349976247493620860

