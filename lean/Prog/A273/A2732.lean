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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C025

/-!
# A273200: Prime power-like integers.

The programs for A273200, there is no canonical definition to state claims against.
-/

/-! ## A273200.P11899969101530494759

`∪[A246655(n+1), A273201(n+1)]%A273199(n+1)`
-/

namespace A273200.P11899969101530494759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A273199 (n + 1))

end

end A273200.P11899969101530494759

/-! ## A273200.P1246788540260034667

`A273130(n+2)%p?[A161712(n)]`
-/

namespace A273200.P1246788540260034667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273130 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A273200.P1246788540260034667

/-! ## A273200.P4513588285530818912

`Δ[∑[A273130(n+1)]%A165948(n)]`
-/

namespace A273200.P4513588285530818912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273130 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A165948 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273200.P4513588285530818912

/-! ## A273200.P473415679784450373

`A006519(A032020(n))*A273130(n+2)`
-/

namespace A273200.P473415679784450373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A032020 n).toNat * A273130 (n + 2)

end

end A273200.P473415679784450373

/-! ## A273200.P6502192973209213039

`or(A001222(A322308(n)!), A273130(n+2))`
-/

namespace A273200.P6502192973209213039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (Nat.factorial (A322308 n).toNat)) (A273130 (n + 2))

end

end A273200.P6502192973209213039

/-!
# A273201: Integers which are prime power-like but not prime powers.

The programs for A273201, there is no canonical definition to state claims against.
-/

/-! ## A273201.P18115674194632759155

`filter[A273200(n+1), A143731(#)]`
-/

namespace A273201.P18115674194632759155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A273201.P18115674194632759155

/-! ## A273201.P5328599254724600441

`filter[A273200(n+1), A215480(#)]`
-/

namespace A273201.P5328599254724600441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A273201.P5328599254724600441

/-! ## A273201.P297821444327419147

`filter[A273200(n+1), A280710(#)]`
-/

namespace A273201.P297821444327419147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A273201.P297821444327419147

/-! ## A273201.P4591235606635437534

`filter[A273200(n+1), A340370(#)]`
-/

namespace A273201.P4591235606635437534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A273201.P4591235606635437534

/-! ## A273201.P650837684146845589

`filter[A273200(n+1), A353481(#)]`
-/

namespace A273201.P650837684146845589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A273201.P650837684146845589

/-!
# A273202: Minimal terms of A274720.

The programs for A273202, there is no canonical definition to state claims against.
-/

/-! ## A273202.P14759516837576152802

`filter[A274720(n+1), A064911(#)]`
-/

namespace A273202.P14759516837576152802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A273202.P14759516837576152802

/-! ## A273202.P4812711238264097206

`filter[A274720(n+1), A101040(#)]`
-/

namespace A273202.P4812711238264097206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A273202.P4812711238264097206

/-! ## A273202.P1829509169980128940

`filter[A274720(n+1), A353480(#)]`
-/

namespace A273202.P1829509169980128940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A273202.P1829509169980128940

/-! ## A273202.P14467961458606489090

`filter[A274720(n+1), A359828(#)]`
-/

namespace A273202.P14467961458606489090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A273202.P14467961458606489090

/-! ## A273202.P1898266010605547526

`∩[A046315(n+1), A274720(n+1)]`
-/

namespace A273202.P1898266010605547526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273202.P1898266010605547526

/-! ## A273202.P12903126453761849522

`∩[A001358(n+1), A274720(n+1)]`
-/

namespace A273202.P12903126453761849522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273202.P12903126453761849522

/-! ## A273202.P12454465107168693402

`∩[A176540(n+1), A274720(n+1)]`
-/

namespace A273202.P12454465107168693402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273202.P12454465107168693402

/-! ## A273202.P5771959469599652309

`∩[A077135(n+1), A274720(n+1)]`
-/

namespace A273202.P5771959469599652309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273202.P5771959469599652309

/-! ## A273202.P12649671353425813647

`∩[A077136(n+1), A274720(n+1)]`
-/

namespace A273202.P12649671353425813647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273202.P12649671353425813647

/-! ## A273202.P2933284580561929105

`∩[A037143(n+1), A274720(n+1)]`
-/

namespace A273202.P2933284580561929105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273202.P2933284580561929105

/-! ## A273202.P301883798890470829

`record[A066048(A274720(n+1))]`
-/

namespace A273202.P301883798890470829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A274720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273202.P301883798890470829

/-! ## A273202.P6891340365522911803

`∩[A142863(n+1), A274720(n+1)]`
-/

namespace A273202.P6891340365522911803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273202.P6891340365522911803

/-!
# A273203: G.f. A(x) satisfies: A(x^2*B(x)) = x^3 - x^4, where A(B(x)) = x.

The programs for A273203, there is no canonical definition to state claims against.
-/

/-! ## A273203.P10667182540275657898

`A127757(A026525(n))`
-/

namespace A273203.P10667182540275657898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A026525 n).toNat

end

end A273203.P10667182540275657898

/-! ## A273203.P8843268836987466489

`A256502(A026119(n))`
-/

namespace A273203.P8843268836987466489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A026119 n).toNat

end

end A273203.P8843268836987466489

/-! ## A273203.P4920242158722471726

`A103221(A268322(n+1)+A090168(n))`
-/

namespace A273203.P4920242158722471726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A268322 (n + 1) + A090168 n).toNat

end

end A273203.P4920242158722471726

/-!
# A273204: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A273204, there is no canonical definition to state claims against.
-/

/-! ## A273204.P8831324945399297601

`A273207(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273204.P8831324945399297601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273207 (n - 1) + a (n - 1)

end

end A273204.P8831324945399297601

/-! ## A273204.P2738032442850263799

`Δ[A273206(n)]-A273207(n)`
-/

namespace A273204.P2738032442850263799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273207 n

end

end A273204.P2738032442850263799

/-! ## A273204.P13993977889133315232

`A273207(n-1)-(val(n, A051890(n))-a(n-1))` with `a(0)=1`
-/

namespace A273204.P13993977889133315232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273207 (n - 1) - ((SequenceMachineLib.valuation n (A051890 n).toNat : ℤ) - a (n - 1))

end

end A273204.P13993977889133315232

/-! ## A273204.P4812406662075374018

`A273207(n-1)-(val(n, A146081(n))-a(n-1))` with `a(0)=1`
-/

namespace A273204.P4812406662075374018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273207 (n - 1) - ((SequenceMachineLib.valuation n (A146081 n).toNat : ℤ) - a (n - 1))

end

end A273204.P4812406662075374018

/-! ## A273204.P6692340145036233416

`A273206(n+1)-(A273207(n)+A273206(n))`
-/

namespace A273204.P6692340145036233416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273206 (n + 1) - (A273207 n + A273206 n)

end

end A273204.P6692340145036233416

/-! ## A273204.P14682860556075177278

`A005408((∑[A273207(n)]-A273207(n))/2)`
-/

namespace A273204.P14682860556075177278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273207 n : ℤ) : ℚ) / 2)).toNat

end

end A273204.P14682860556075177278

/-!
# A273205: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A273205, there is no canonical definition to state claims against.
-/

/-! ## A273205.P6852893070296212014

`A273204(2^n-1)`
-/

namespace A273205.P6852893070296212014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273204 (2 ^ n - 1)

end

end A273205.P6852893070296212014

/-! ## A273205.P10537667251655230502

`or(1, A273204(A000225(n)))`
-/

namespace A273205.P10537667251655230502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273204 (A000225 n).toNat)

end

end A273205.P10537667251655230502

/-! ## A273205.P10504642738721850185

`record[A273204(A322382(n+1))]`
-/

namespace A273205.P10504642738721850185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273204 (A322382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273205.P10504642738721850185

/-! ## A273205.P9308414914435464649

`record[A273204(A324876(n+1))]`
-/

namespace A273205.P9308414914435464649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273204 (A324876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273205.P9308414914435464649

/-! ## A273205.P13527239731357977924

`record[gcd(A025480(n), A273204(n))]`
-/

namespace A273205.P13527239731357977924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 n) (A273204 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273205.P13527239731357977924

/-!
# A273206: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A273206, there is no canonical definition to state claims against.
-/

/-! ## A273206.P11548441313110006063

`∑[∑[A273207(n)]+1-A273207(n)]`
-/

namespace A273206.P11548441313110006063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273207 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273206.P11548441313110006063

/-! ## A273206.P17929589575233391208

`∑[A273204(n)]`
-/

namespace A273206.P17929589575233391208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273206.P17929589575233391208

/-! ## A273206.P9111036458489789750

`a(n-1)+A273204(n)%A005891(n)` with `a(0)=1`
-/

namespace A273206.P9111036458489789750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273204 n) (A005891 n)

end

end A273206.P9111036458489789750

/-! ## A273206.P9192478631381293790

`a(n-1)+and(1, A000040(n+1))*A273204(n)` with `a(0)=1`
-/

namespace A273206.P9192478631381293790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 (A000040 (n + 1)) * A273204 n

end

end A273206.P9192478631381293790

/-! ## A273206.P16717420510156926341

`a(n-1)+A001222(A001359(n+1))*A273204(n)` with `a(0)=1`
-/

namespace A273206.P16717420510156926341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001222 (A001359 (n + 1)).toNat * A273204 n

end

end A273206.P16717420510156926341

/-! ## A273206.P10414986399581490011

`a(n-1)+and(1, A026581(n))*A273204(n)` with `a(0)=1`
-/

namespace A273206.P10414986399581490011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 (A026581 n) * A273204 n

end

end A273206.P10414986399581490011

/-!
# A273207: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A273207, there is no canonical definition to state claims against.
-/

/-! ## A273207.P10011776541359302091

`Δ[A273204(n)]`
-/

namespace A273207.P10011776541359302091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273207.P10011776541359302091

/-! ## A273207.P1044259813152243959

`A273204(n+1)-A273204(n)`
-/

namespace A273207.P1044259813152243959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273204 (n + 1) - A273204 n

end

end A273207.P1044259813152243959

/-!
# A273208: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A273208, there is no canonical definition to state claims against.
-/

/-! ## A273208.P13458483489199349039

`A273211(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273208.P13458483489199349039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273211 (n - 1) + a (n - 1)

end

end A273208.P13458483489199349039

/-! ## A273208.P16925713424414166835

`Δ[A273210(n)]-A273211(n)`
-/

namespace A273208.P16925713424414166835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273211 n

end

end A273208.P16925713424414166835

/-! ## A273208.P8174454944581218254

`A016754(n)-A272506(n)%A016754(n)`
-/

namespace A273208.P8174454944581218254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A272506 n) (A016754 n)

end

end A273208.P8174454944581218254

/-! ## A273208.P9077446458702773986

`A273210(n+1)-(A273211(n)+A273210(n))`
-/

namespace A273208.P9077446458702773986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273210 (n + 1) - (A273211 n + A273210 n)

end

end A273208.P9077446458702773986

/-! ## A273208.P5082271137903741611

`A181385(A016825(n))-A272506(n)`
-/

namespace A273208.P5082271137903741611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272506 n

end

end A273208.P5082271137903741611

/-! ## A273208.P12610346867863662081

`A008740(A008458(n))-A272506(n)`
-/

namespace A273208.P12610346867863662081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272506 n

end

end A273208.P12610346867863662081

/-!
# A273209: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A273209, there is no canonical definition to state claims against.
-/

/-! ## A273209.P9797659519023648940

`A273208(2^n-1)`
-/

namespace A273209.P9797659519023648940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 (2 ^ n - 1)

end

end A273209.P9797659519023648940

/-! ## A273209.P3782058321544373841

`record[A273208(A038573(n))]`
-/

namespace A273209.P3782058321544373841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273209.P3782058321544373841

/-! ## A273209.P17099374473232551181

`record[A273208(A091264(n))]`
-/

namespace A273209.P17099374473232551181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273209.P17099374473232551181

/-! ## A273209.P6913671583387889338

`record[A273208(A218616(n))]`
-/

namespace A273209.P6913671583387889338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273209.P6913671583387889338

/-! ## A273209.P10780313668869122656

`record[A273208(Δ[A228693(n)])]`
-/

namespace A273209.P10780313668869122656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273209.P10780313668869122656

/-!
# A273210: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A273210, there is no canonical definition to state claims against.
-/

/-! ## A273210.P15979741693473070631

`∑[A273211(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273210.P15979741693473070631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273211 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273210.P15979741693473070631

/-! ## A273210.P15860054925650016254

`∑[∑[A273211(n)]+1-A273211(n)]`
-/

namespace A273210.P15860054925650016254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273211 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273211 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273210.P15860054925650016254

/-! ## A273210.P10539971218827125540

`∑[A273208(n)]`
-/

namespace A273210.P10539971218827125540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273210.P10539971218827125540

/-! ## A273210.P3323157286941806220

`∑[A181385(A016825(n))-A272506(n)]`
-/

namespace A273210.P3323157286941806220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273210.P3323157286941806220

/-! ## A273210.P12787674524771465249

`∑[A181385(A016825(n))]-A272508(n)`
-/

namespace A273210.P12787674524771465249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272508 n

end

end A273210.P12787674524771465249

/-! ## A273210.P1417818951232542215

`∑[A008740(A008458(n))-A272506(n)]`
-/

namespace A273210.P1417818951232542215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273210.P1417818951232542215

/-! ## A273210.P7331624447117092878

`∑[A008740(A008458(n))]-A272508(n)`
-/

namespace A273210.P7331624447117092878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272508 n

end

end A273210.P7331624447117092878

/-!
# A273211: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A273211, there is no canonical definition to state claims against.
-/

/-! ## A273211.P6671050895921031273

`Δ[(n+1)*A008574(n)-A272506(n)]`
-/

namespace A273211.P6671050895921031273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008574 n - A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273211.P6671050895921031273

/-! ## A273211.P14871019730483083429

`Δ[A273208(n)]`
-/

namespace A273211.P14871019730483083429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273211.P14871019730483083429

/-! ## A273211.P2974474368429094950

`A273208(n+1)-A273208(n)`
-/

namespace A273211.P2974474368429094950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273208 (n + 1) - A273208 n

end

end A273211.P2974474368429094950

/-! ## A273211.P6235146637574992851

`Δ[A181385(A016825(n))-A272506(n)]`
-/

namespace A273211.P6235146637574992851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273211.P6235146637574992851

/-! ## A273211.P1843492327305820169

`Δ[A181385(A016825(n))]-A272509(n)`
-/

namespace A273211.P1843492327305820169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272509 n

end

end A273211.P1843492327305820169

/-! ## A273211.P9646451780620330302

`Δ[A008740(A008458(n))-A272506(n)]`
-/

namespace A273211.P9646451780620330302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273211.P9646451780620330302

/-! ## A273211.P13432632095720563107

`Δ[A008740(A008458(n))]-A272509(n)`
-/

namespace A273211.P13432632095720563107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272509 n

end

end A273211.P13432632095720563107

/-! ## A273211.P3441178614270674091

`Δ[A008574(n²+n)-A272506(n)]`
-/

namespace A273211.P3441178614270674091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n ^ 2 + n) - A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273211.P3441178614270674091

/-!
# A273212: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A273212, there is no canonical definition to state claims against.
-/

/-! ## A273212.P17572223479650886786

`A273215(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273212.P17572223479650886786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273215 (n - 1) + a (n - 1)

end

end A273212.P17572223479650886786

/-! ## A273212.P5614798388531774170

`Δ[A273214(n)]-A273215(n)`
-/

namespace A273212.P5614798388531774170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273215 n

end

end A273212.P5614798388531774170

/-! ## A273212.P7699998307618823284

`∑[a(A008683(4*n))*A273215(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A273212.P7699998307618823284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (A008683 (4 * n)).toNat * A273215 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273212.P7699998307618823284

/-! ## A273212.P766539434770801917

`A273214(n+1)-(A273215(n)+A273214(n))`
-/

namespace A273212.P766539434770801917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273214 (n + 1) - (A273215 n + A273214 n)

end

end A273212.P766539434770801917

/-!
# A273213: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A273213, there is no canonical definition to state claims against.
-/

/-! ## A273213.P17150596232925737016

`A273212(2^n-1)`
-/

namespace A273213.P17150596232925737016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273212 (2 ^ n - 1)

end

end A273213.P17150596232925737016

/-! ## A273213.P16819792201544479379

`record[A273212(A153151(n))]`
-/

namespace A273213.P16819792201544479379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273212 (A153151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273213.P16819792201544479379

/-! ## A273213.P5337374513804349972

`record[A273212(A173787(n))]`
-/

namespace A273213.P5337374513804349972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273212 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273213.P5337374513804349972

/-! ## A273213.P14767832988825761253

`or(1, A273212(A000225(n)))`
-/

namespace A273213.P14767832988825761253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273212 (A000225 n).toNat)

end

end A273213.P14767832988825761253

/-! ## A273213.P8220917751830784119

`record[A273212(A243071(n+1))]`
-/

namespace A273213.P8220917751830784119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273212 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273213.P8220917751830784119

/-!
# A273214: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A273214, there is no canonical definition to state claims against.
-/

/-! ## A273214.P14521268086638759839

`∑[A273215(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273214.P14521268086638759839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273215 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273214.P14521268086638759839

/-! ## A273214.P14935728678064892451

`∑[∑[A273215(n)]-A273215(n)+1]`
-/

namespace A273214.P14935728678064892451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273215 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273214.P14935728678064892451

/-! ## A273214.P14023572264196263392

`∑[A273212(n)]`
-/

namespace A273214.P14023572264196263392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273214.P14023572264196263392

/-! ## A273214.P12269437897167910325

`A273212(n)+a(n-1)%A008421(n)` with `a(0)=1`
-/

namespace A273214.P12269437897167910325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273212 n + Int.tmod (a (n - 1)) (A008421 n)

end

end A273214.P12269437897167910325

/-! ## A273214.P12202930805086455426

`a(n-1)+A273212(n)%A001248(n+1)` with `a(0)=1`
-/

namespace A273214.P12202930805086455426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273212 n) (A001248 (n + 1))

end

end A273214.P12202930805086455426

/-! ## A273214.P8872911432171327469

`A273212(n%A003959(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A273214.P8872911432171327469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273212 (Int.tmod (n : ℤ) (A003959 (n + 1))).toNat + a (n - 1)

end

end A273214.P8872911432171327469

/-! ## A273214.P15623786812095138210

`a(n-1)+A000035(A040177(n+1))*A273212(n)` with `a(0)=1`
-/

namespace A273214.P15623786812095138210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000035 (A040177 (n + 1)).toNat * A273212 n

end

end A273214.P15623786812095138210

/-!
# A273215: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A273215, there is no canonical definition to state claims against.
-/

/-! ## A273215.P14263508063699133626

`Δ[A273212(n)]`
-/

namespace A273215.P14263508063699133626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273215.P14263508063699133626

/-! ## A273215.P17469235541806772116

`A273212(n+1)-A273212(n)`
-/

namespace A273215.P17469235541806772116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273212 (n + 1) - A273212 n

end

end A273215.P17469235541806772116

/-!
# A273216: Initial prime numbers encountered by Collatz (3x+1) evaluation at odd, composite, ascending starts.

The programs for A273216, there is no canonical definition to state claims against.
-/

/-! ## A273216.P15452556892083999115

`A320028(A071904(n+1))`
-/

namespace A273216.P15452556892083999115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320028 (A071904 (n + 1)).toNat

end

end A273216.P15452556892083999115

/-! ## A273216.P12251724493817696677

`A320028(A014076(n+2))`
-/

namespace A273216.P12251724493817696677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320028 (A014076 (n + 2)).toNat

end

end A273216.P12251724493817696677

/-! ## A273216.P4068586412680997569

`A320028(A172048(n+2))`
-/

namespace A273216.P4068586412680997569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320028 (A172048 (n + 2)).toNat

end

end A273216.P4068586412680997569

/-! ## A273216.P12222511621804474680

`A320028(eq[1, A107393(n)])`
-/

namespace A273216.P12222511621804474680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273216.P12222511621804474680

/-! ## A273216.P11609630559847313723

`A320028(A007921(n+1)+2)`
-/

namespace A273216.P11609630559847313723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320028 (A007921 (n + 1) + 2).toNat

end

end A273216.P11609630559847313723

/-!
# A273217: Initial members of prime 10-tuplets (p, p + 4, p + 6, p + 10, p + 16, p + 18, p + 24, p + 28, p + 30, p + 34).

The programs for A273217, there is no canonical definition to state claims against.
-/

/-! ## A273217.P9057685168880610042

`∩[A022546(n+1)-4, A022547(n+1)]`
-/

namespace A273217.P9057685168880610042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022546 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273217.P9057685168880610042

/-! ## A273217.P9365428631247912866

`∩[A022547(n+1), A257125(n+1)-4]`
-/

namespace A273217.P9365428631247912866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273217.P9365428631247912866

/-! ## A273217.P18310868485123399168

`∩[A257125(n+1)-4, A257125(n+2)]`
-/

namespace A273217.P18310868485123399168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273217.P18310868485123399168

/-!
# A273220: a(n) = 8n^2 - 12n + 1.

The programs for A273220, the canonical program `A273220.P22215574643113122` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273220 has offset 2).

The definition of A273220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(n+2)²-12*(n+2)+1` (program `A273220.P22215574643113122`, by `A273220.P22215574643113122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A273220.P22215574643113122

`8*(n+2)²-12*(n+2)+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A273220

/-- `8*(n+2)²-12*(n+2)+1` -/
def P22215574643113122.Spec : Prop :=
  ∀ n, P22215574643113122.a n = A273220 (n + 2)

theorem P22215574643113122.correct : P22215574643113122.Spec := by
  intro n
  simp only [A273220, Nat.add_sub_cancel]

end A273220

/-! ## A273220.P1411353896260481160

`∑[a(n-1)+16]` with `a(0)=9, a(1)=28`
-/

namespace A273220.P1411353896260481160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 28] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273220.P1411353896260481160

namespace A273220

/-- `∑[a(n-1)+16]` -/
def P1411353896260481160.Spec : Prop :=
  ∀ n, (P1411353896260481160.a n : ℤ) = A273220 (n + 2)

end A273220

/-! ## A273220.P16545578765593980022

`or(1, (n+2)*(8*n+4))`
-/

namespace A273220.P16545578765593980022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 2) * (8 * n + 4))

end

end A273220.P16545578765593980022

namespace A273220

/-- `or(1, (n+2)*(8*n+4))` -/
def P16545578765593980022.Spec : Prop :=
  ∀ n, (P16545578765593980022.a n : ℤ) = A273220 (n + 2)

end A273220

/-! ## A273220.P1552569568519179056

`xor(1, (n+2)*(8*n+4))`
-/

namespace A273220.P1552569568519179056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 2) * (8 * n + 4))

end

end A273220.P1552569568519179056

namespace A273220

/-- `xor(1, (n+2)*(8*n+4))` -/
def P1552569568519179056.Spec : Prop :=
  ∀ n, (P1552569568519179056.a n : ℤ) = A273220 (n + 2)

end A273220

/-! ## A273220.P7872295698093062754

`record[(n+2)*lcm(2, n+3)-3]`
-/

namespace A273220.P7872295698093062754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.lcm 2 (n + 3) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273220.P7872295698093062754

namespace A273220

/-- `record[(n+2)*lcm(2, n+3)-3]` -/
def P7872295698093062754.Spec : Prop :=
  ∀ n, P7872295698093062754.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P10821744332480860787

`ceil((2*n+1)/acot(4*(n+2)))`
-/

namespace A273220.P10821744332480860787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (4 * (n + 2) : ℝ)⌉

end

end A273220.P10821744332480860787

namespace A273220

/-- `ceil((2*n+1)/acot(4*(n+2)))` -/
def P10821744332480860787.Spec : Prop :=
  ∀ n, P10821744332480860787.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P11152732010797395337

`record[(3-n)²-lcm(n-2, 2*n)]`
-/

namespace A273220.P11152732010797395337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - (Int.lcm ((n : ℤ) - 2) (2 * n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273220.P11152732010797395337

namespace A273220

/-- `record[(3-n)²-lcm(n-2, 2*n)]` -/
def P11152732010797395337.Spec : Prop :=
  ∀ n, P11152732010797395337.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P5742895874929843374

`floor(lcm(2*n+1, (2*n+3)²)/(n+1))`
-/

namespace A273220.P5742895874929843374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) ((2 * n + 3) ^ 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A273220.P5742895874929843374

namespace A273220

/-- `floor(lcm(2*n+1, (2*n+3)²)/(n+1))` -/
def P5742895874929843374.Spec : Prop :=
  ∀ n, P5742895874929843374.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P5135357045474298624

`(A085027(n)-3)/2`
-/

namespace A273220.P5135357045474298624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085027 n - 3 : ℚ) / 2

end

end A273220.P5135357045474298624

namespace A273220

/-- `(A085027(n)-3)/2` -/
def P5135357045474298624.Spec : Prop :=
  ∀ n, P5135357045474298624.a n = (A273220 (n + 2) : ℚ)

end A273220

/-! ## A273220.P8852970729106940536

`(A102094(n+1)-n)/(n+1)`
-/

namespace A273220.P8852970729106940536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102094 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A273220.P8852970729106940536

namespace A273220

/-- `(A102094(n+1)-n)/(n+1)` -/
def P8852970729106940536.Spec : Prop :=
  ∀ n, P8852970729106940536.a n = (A273220 (n + 2) : ℚ)

end A273220

/-! ## A273220.P156720073601485170

`A158563(n+1)%A154106(n)`
-/

namespace A273220.P156720073601485170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158563 (n + 1)) (A154106 n)

end

end A273220.P156720073601485170

namespace A273220

/-- `A158563(n+1)%A154106(n)` -/
def P156720073601485170.Spec : Prop :=
  ∀ n, P156720073601485170.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P2595564910867811023

`A258721(n)%A158444(n+1)`
-/

namespace A273220.P2595564910867811023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258721 n) (A158444 (n + 1))

end

end A273220.P2595564910867811023

namespace A273220

/-- `A258721(n)%A158444(n+1)` -/
def P2595564910867811023.Spec : Prop :=
  ∀ n, P2595564910867811023.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P8792523126571736842

`A059993(Δ[n²])`
-/

namespace A273220.P8792523126571736842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A273220.P8792523126571736842

namespace A273220

/-- `A059993(Δ[n²])` -/
def P8792523126571736842.Spec : Prop :=
  ∀ n, P8792523126571736842.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P16941774756280271612

`A255876(2*(n+1))`
-/

namespace A273220.P16941774756280271612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255876 (2 * (n + 1))

end

end A273220.P16941774756280271612

namespace A273220

/-- `A255876(2*(n+1))` -/
def P16941774756280271612.Spec : Prop :=
  ∀ n, P16941774756280271612.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P4027377411412368553

`abs(1-A090288(2*n+1))`
-/

namespace A273220.P4027377411412368553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A090288 (2 * n + 1)|

end

end A273220.P4027377411412368553

namespace A273220

/-- `abs(1-A090288(2*n+1))` -/
def P4027377411412368553.Spec : Prop :=
  ∀ n, P4027377411412368553.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P11509638652655854320

`abs(2-A142463(2*(n+1)))`
-/

namespace A273220.P11509638652655854320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A142463 (2 * (n + 1))|

end

end A273220.P11509638652655854320

namespace A273220

/-- `abs(2-A142463(2*(n+1)))` -/
def P11509638652655854320.Spec : Prop :=
  ∀ n, P11509638652655854320.a n = A273220 (n + 2)

end A273220

/-! ## A273220.P11342037825836070021

`abs(A046092(2*(n+1))-3)`
-/

namespace A273220.P11342037825836070021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046092 (2 * (n + 1)) - 3|

end

end A273220.P11342037825836070021

namespace A273220

/-- `abs(A046092(2*(n+1))-3)` -/
def P11342037825836070021.Spec : Prop :=
  ∀ n, P11342037825836070021.a n = A273220 (n + 2)

end A273220

/-!
# A273221: a(n) = p*(p - 1)*(13*p - 5)/6, where p = prime(n).

The programs for A273221, the canonical program `A273221.P18280931573240640292` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273221 has offset 1).

The definition of A273221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273221.P18280931573240640292

`A006564(A000040(n+1))-A262247(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273221

/-- `A006564(A000040(n+1))-A262247(n+1)` -/
def P18280931573240640292.Spec : Prop :=
  ∀ n, P18280931573240640292.a n = A273221 (n + 1)

theorem P18280931573240640292.correct : P18280931573240640292.Spec := by
  intro n
  simp only [A273221, Nat.add_sub_cancel]

end A273221

/-! ## A273221.P12730036737553227359

`A055112(A006093(n+1))+A000292(A006093(n+1))`
-/

namespace A273221.P12730036737553227359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (A006093 (n + 1)).toNat + A000292 (A006093 (n + 1)).toNat

end

end A273221.P12730036737553227359

namespace A273221

/-- `A055112(A006093(n+1))+A000292(A006093(n+1))` -/
def P12730036737553227359.Spec : Prop :=
  ∀ n, P12730036737553227359.a n = A273221 (n + 1)

end A273221

/-!
# A273225: Number of bipartitions of n wherein odd parts are distinct (and even parts are unrestricted).

The programs for A273225, there is no canonical definition to state claims against.
-/

/-! ## A273225.P14749027088643226522

`abs(A274621(n))`
-/

namespace A273225.P14749027088643226522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274621 n|

end

end A273225.P14749027088643226522

/-! ## A273225.P13389235795556369889

`A033999(n)*A274621(n)`
-/

namespace A273225.P13389235795556369889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A274621 n

end

end A273225.P13389235795556369889

/-! ## A273225.P17763212295708011562

`gcd(A000038(n), A274621(n))`
-/

namespace A273225.P17763212295708011562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A274621 n)

end

end A273225.P17763212295708011562

/-! ## A273225.P6136680230244597747

`lcm(A000034(n), A274621(n))`
-/

namespace A273225.P6136680230244597747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A274621 n)

end

end A273225.P6136680230244597747

/-! ## A273225.P17956184228171369875

`gcd(-A274621(n), and(16, A000120(n)))`
-/

namespace A273225.P17956184228171369875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A274621 n) (Int.land 16 (A000120 n))

end

end A273225.P17956184228171369875

/-! ## A273225.P1209355359388286335

`A129818(∑[n])*A274621(n)`
-/

namespace A273225.P1209355359388286335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (∑ j ∈ Finset.range (n + 1), f1 j) * A274621 n

end

end A273225.P1209355359388286335

/-!
# A273226: G.f. is the cube of the g.f. of A006950.

The programs for A273226, there is no canonical definition to state claims against.
-/

/-! ## A273226.P15537683140743318887

`∑[∑[A282494(A058353(n+1))]]`
-/

namespace A273226.P15537683140743318887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282494 (A058353 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273226.P15537683140743318887

/-! ## A273226.P4810939043431249094

`∑[∑[A183110(A263330(n+1))]]`
-/

namespace A273226.P4810939043431249094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A263330 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273226.P4810939043431249094

/-! ## A273226.P15378239000788021445

`A264686(n)-A063725(A130448(n+1))`
-/

namespace A273226.P15378239000788021445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264686 n - A063725 (A130448 (n + 1)).toNat

end

end A273226.P15378239000788021445

/-!
# A273227: Consider all ways of writing the n-th composite number as the product of two divisors d1*d2 = d3*d4 = ...; a(n) is the minimum of the sums {d1 + d2, d3 + d4, ...}.

The programs for A273227, there is no canonical definition to state claims against.
-/

/-! ## A273227.P15085234422180532370

`A092510(A002808(n+1))+A046343(n+1)`
-/

namespace A273227.P15085234422180532370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 (A002808 (n + 1)).toNat + A046343 (n + 1)

end

end A273227.P15085234422180532370

/-! ## A273227.P5507872968959236981

`A305747(n+1)+A002808(n+1)/A305747(n+1)`
-/

namespace A273227.P5507872968959236981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305747 (n + 1) : ℚ) + (A002808 (n + 1) : ℚ) / (A305747 (n + 1) : ℚ)

end

end A273227.P5507872968959236981

/-! ## A273227.P17831362671354747373

`A063655(Δ[A053767(n)])`
-/

namespace A273227.P17831362671354747373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (f1 (n + 1) - f1 n).toNat

end

end A273227.P17831362671354747373

/-! ## A273227.P8826016849398516017

`A063655(A002808(n+1))`
-/

namespace A273227.P8826016849398516017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A002808 (n + 1)).toNat

end

end A273227.P8826016849398516017

/-! ## A273227.P3779015662319940137

`A063655(A018252(n+2))`
-/

namespace A273227.P3779015662319940137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A018252 (n + 2)).toNat

end

end A273227.P3779015662319940137

/-! ## A273227.P1095579100465881674

`A063655(A072668(n+1)+1)`
-/

namespace A273227.P1095579100465881674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A072668 (n + 1) + 1).toNat

end

end A273227.P1095579100465881674

/-! ## A273227.P5016248095598766227

`A063655(A053767(n+1)-A053767(n))`
-/

namespace A273227.P5016248095598766227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A053767 (n + 1) - A053767 n).toNat

end

end A273227.P5016248095598766227

/-! ## A273227.P11164883406068604437

`A134875(lt[n+1, ∑{d}[n, #]])`
-/

namespace A273227.P11164883406068604437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134875 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273227.P11164883406068604437

/-!
# A273228: G.f. is the fourth power of the g.f. of A006950.

The programs for A273228, there is no canonical definition to state claims against.
-/

/-! ## A273228.P3919586584566159360

`∑[A002024(A168550(3^n))]`
-/

namespace A273228.P3919586584566159360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A168550 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273228.P3919586584566159360

/-! ## A273228.P79127008320833473

`A184421(A026679(n))`
-/

namespace A273228.P79127008320833473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A026679 n).toNat

end

end A273228.P79127008320833473

/-!
# A273229: Squares that remain squares if you decrease them by a repunit with the same number of digits.

The programs for A273229, there is no canonical definition to state claims against.
-/

/-! ## A273229.P2327518784822797774

`A000027(A048611(n+1)²)`
-/

namespace A273229.P2327518784822797774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048611 (n + 1) ^ 2).toNat

end

end A273229.P2327518784822797774

/-! ## A273229.P8533894797883850223

`A000027(A048611(n+1)^2)`
-/

namespace A273229.P8533894797883850223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048611 (n + 1) ^ 2).toNat

end

end A273229.P8533894797883850223

/-!
# A273230: Squares that remain squares if you decrease them by 3 times a repunit with the same number of digits.

The programs for A273230, there is no canonical definition to state claims against.
-/

/-! ## A273230.P18363933983876633065

`p?[A112689(A240651(n+1))]²`
-/

namespace A273230.P18363933983876633065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A240651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A273230.P18363933983876633065

/-! ## A273230.P4305808049026282559

`A005145(A005563(n)+A000129(2*n+1))²`
-/

namespace A273230.P4305808049026282559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A005563 n + A000129 (2 * n + 1)).toNat ^ 2

end

end A273230.P4305808049026282559

/-!
# A273232: Squares that remain squares if you decrease them by 5 times a repunit with the same number of digits.

The programs for A273232, there is no canonical definition to state claims against.
-/

/-! ## A273232.P17955294665420555895

`Δ[A352226(A161731(n))]²`
-/

namespace A273232.P17955294665420555895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A161731 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A273232.P17955294665420555895

/-!
# A273238: Least number k such that k^3 is the sum of two nonzero squares in exactly n ways.

The programs for A273238, there is no canonical definition to state claims against.
-/

/-! ## A273238.P3982899516093277568

`Δ[eq[1, A007736(3*n+4)]]`
-/

namespace A273238.P3982899516093277568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A273238.P3982899516093277568

/-! ## A273238.P17495057534866352892

`Δ[eq[1, A144866(3*n+4)]]`
-/

namespace A273238.P17495057534866352892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144866 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A273238.P17495057534866352892

/-! ## A273238.P9577113074454826105

`Δ[lt[A132739(3*n+4), 5]]`
-/

namespace A273238.P9577113074454826105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (3 * n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A273238.P9577113074454826105

/-!
# A273239: Non-palindromic numbers whose reversal is a palindrome.

The programs for A273239, there is no canonical definition to state claims against.
-/

/-! ## A273239.P9750760967590260737

`10*A061917(n+2)`
-/

namespace A273239.P9750760967590260737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A061917 (n + 2)

end

end A273239.P9750760967590260737

/-! ## A273239.P9941554462603127430

`∑[A008592(Δ[A061917(n+1)])]`
-/

namespace A273239.P9941554462603127430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273239.P9941554462603127430

/-! ## A273239.P14549331426050225143

`∩[A061917(n+1), A118959(n+1)]`
-/

namespace A273239.P14549331426050225143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P14549331426050225143

/-! ## A273239.P13186951756176177944

`∩[A118959(n+1), A359173(n+1)]`
-/

namespace A273239.P13186951756176177944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P13186951756176177944

/-! ## A273239.P4008507746946516075

`A008592(A061917(n+2))`
-/

namespace A273239.P4008507746946516075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A061917 (n + 2)).toNat

end

end A273239.P4008507746946516075

/-! ## A273239.P13447910961223354797

`∩[A017281(n+1)-1, A061917(n+2)]`
-/

namespace A273239.P13447910961223354797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P13447910961223354797

/-! ## A273239.P8064112553397366216

`∩[A017293(n+1)-2, A061917(n+2)]`
-/

namespace A273239.P8064112553397366216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P8064112553397366216

/-! ## A273239.P1692421630615633142

`A017281(A061917(n+2))-A329684(n+3)`
-/

namespace A273239.P1692421630615633142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A061917 (n + 2)).toNat - A329684 (n + 3)

end

end A273239.P1692421630615633142

/-! ## A273239.P13245227650947636350

`∩[A061917(n+1), A396948(n+1)]`
-/

namespace A273239.P13245227650947636350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P13245227650947636350

/-! ## A273239.P8066537998385788477

`∩[A061917(n+1), A263172(n+1)]`
-/

namespace A273239.P8066537998385788477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P8066537998385788477

/-! ## A273239.P15499458114178549987

`A008592(eq[A057427(n), A061906(n)])`
-/

namespace A273239.P15499458114178549987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273239.P15499458114178549987

/-! ## A273239.P4039773378748041876

`A008706(A061917(n+2)+A061917(n+2))`
-/

namespace A273239.P4039773378748041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A061917 (n + 2) + A061917 (n + 2)).toNat

end

end A273239.P4039773378748041876

/-! ## A273239.P13568028295695387924

`∩[A061917(n+1), A083476(n+1)]`
-/

namespace A273239.P13568028295695387924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P13568028295695387924

/-! ## A273239.P16244354700314034700

`∩[A061917(n+1), A296714(n+1)]`
-/

namespace A273239.P16244354700314034700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P16244354700314034700

/-! ## A273239.P15325453473826524803

`∩[A061917(n+1), A071590(n+1)]`
-/

namespace A273239.P15325453473826524803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273239.P15325453473826524803

/-! ## A273239.P5985060932958576787

`∑{d}[5*A281625(n+1), A005843(A000010(#))]`
-/

namespace A273239.P5985060932958576787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A281625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005843 (A000010 d).toNat

end

end A273239.P5985060932958576787

/-! ## A273239.P8871479687772295345

`10*A281625(n+1)%A265973(n+1)`
-/

namespace A273239.P8871479687772295345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * Int.tmod (A281625 (n + 1)) (A265973 (n + 1))

end

end A273239.P8871479687772295345

/-! ## A273239.P4501705271247743328

`A195140(4*A281625(n+1))`
-/

namespace A273239.P4501705271247743328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (4 * A281625 (n + 1)).toNat

end

end A273239.P4501705271247743328

/-! ## A273239.P17852939811517072326

`A005843(5*A281625(n+1))`
-/

namespace A273239.P17852939811517072326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (5 * A281625 (n + 1)).toNat

end

end A273239.P17852939811517072326

/-!
# A273241: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A273241, there is no canonical definition to state claims against.
-/

/-! ## A273241.P15538984389580797948

`A273244(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273241.P15538984389580797948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273244 (n - 1) + a (n - 1)

end

end A273241.P15538984389580797948

/-! ## A273241.P8537710953686000416

`Δ[A273243(n)]-A273244(n)`
-/

namespace A273241.P8537710953686000416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273244 n

end

end A273241.P8537710953686000416

/-! ## A273241.P8042877273875734589

`A273243(n+1)-(A273244(n)+A273243(n))`
-/

namespace A273241.P8042877273875734589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273243 (n + 1) - (A273244 n + A273243 n)

end

end A273241.P8042877273875734589

/-! ## A273241.P1676212769335043563

`Δ[A273243(A048766(a(n-1)))]` with `a(0)=0`
-/

namespace A273241.P1676212769335043563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A273243 (A048766 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273241.P1676212769335043563

/-! ## A273241.P15093907821190947215

`A056926(A273295(n)²)`
-/

namespace A273241.P15093907821190947215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A273295 n ^ 2).toNat

end

end A273241.P15093907821190947215

/-!
# A273242: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A273242, there is no canonical definition to state claims against.
-/

/-! ## A273242.P4276148896329396093

`A273241(2^n-1)`
-/

namespace A273242.P4276148896329396093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 (2 ^ n - 1)

end

end A273242.P4276148896329396093

/-! ## A273242.P14125350390197677293

`record[A273241(A173787(n))]`
-/

namespace A273242.P14125350390197677293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273242.P14125350390197677293

/-! ## A273242.P4805084586022516048

`record[A273241(A232751(n))]`
-/

namespace A273242.P4805084586022516048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273242.P4805084586022516048

/-! ## A273242.P13266737411722861396

`record[A273241(A255067(n))]`
-/

namespace A273242.P13266737411722861396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273242.P13266737411722861396

/-! ## A273242.P7453813680212726294

`record[A273241(A292600(n))]`
-/

namespace A273242.P7453813680212726294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 (A292600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273242.P7453813680212726294

/-!
# A273243: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A273243, there is no canonical definition to state claims against.
-/

/-! ## A273243.P4741372247994343088

`∑[A273241(n)]`
-/

namespace A273243.P4741372247994343088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273243.P4741372247994343088

/-! ## A273243.P9430951381156962747

`A273241(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273243.P9430951381156962747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273241 n + a (A023443 n).toNat

end

end A273243.P9430951381156962747

/-! ## A273243.P6247958402532486896

`A273241(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A273243.P6247958402532486896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273241 n + a (A000027 (n + 1) - 2).toNat

end

end A273243.P6247958402532486896

/-! ## A273243.P9288726137607101734

`a(n-1)+A273241(n)%A273222(n+1)` with `a(0)=1`
-/

namespace A273243.P9288726137607101734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273241 n) (A273222 (n + 1))

end

end A273243.P9288726137607101734

/-! ## A273243.P17281648328300430456

`∑[∑[A273244(n)]+1-A273244(n)]`
-/

namespace A273243.P17281648328300430456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273243.P17281648328300430456

/-!
# A273244: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A273244, there is no canonical definition to state claims against.
-/

/-! ## A273244.P1392148183456051786

`Δ[A273241(n)]`
-/

namespace A273244.P1392148183456051786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273244.P1392148183456051786

/-! ## A273244.P1656763541508114212

`A273241(n+1)-A273241(n)`
-/

namespace A273244.P1656763541508114212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273241 (n + 1) - A273241 n

end

end A273244.P1656763541508114212

/-! ## A273244.P6766547758679904746

`xor(A025442(A020055(n)), A273298(n))`
-/

namespace A273244.P6766547758679904746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025442 (A020055 n).toNat) (A273298 n)

end

end A273244.P6766547758679904746

/-! ## A273244.P16962654022913829250

`xor(A178261(A208130(n+1)), A273298(n))`
-/

namespace A273244.P16962654022913829250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178261 (A208130 (n + 1)).toNat) (A273298 n)

end

end A273244.P16962654022913829250

/-! ## A273244.P8135907237651263565

`Δ[A273243(n)]-A056926(A273295(n)²)`
-/

namespace A273244.P8135907237651263565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056926 (A273295 n ^ 2).toNat

end

end A273244.P8135907237651263565

/-!
# A273245: Non-palindromic binary numbers whose reversal is a palindrome.

The programs for A273245, the canonical program `A273245.P11157481121189141754` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273245 has offset 1).

The definition of A273245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A272670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273245.P11157481121189141754

`A007088(A272670(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A273245

/-- `A007088(A272670(n+1))` -/
def P11157481121189141754.Spec : Prop :=
  ∀ n, P11157481121189141754.a n = A273245 (n + 1)

theorem P11157481121189141754.correct : P11157481121189141754.Spec := by
  intro n
  simp only [A273245, Nat.add_sub_cancel]

end A273245

/-! ## A273245.P8706216194652671846

`A007088(2*A161604(n+1))`
-/

namespace A273245.P8706216194652671846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A161604 (n + 1)).toNat

end

end A273245.P8706216194652671846

namespace A273245

/-- `A007088(2*A161604(n+1))` -/
def P8706216194652671846.Spec : Prop :=
  ∀ n, P8706216194652671846.a n = A273245 (n + 1)

end A273245

/-! ## A273245.P3471813530133243891

`A007088(2*A057890(n+2))`
-/

namespace A273245.P3471813530133243891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A057890 (n + 2)).toNat

end

end A273245.P3471813530133243891

namespace A273245

/-- `A007088(2*A057890(n+2))` -/
def P3471813530133243891.Spec : Prop :=
  ∀ n, P3471813530133243891.a n = A273245 (n + 1)

end A273245

/-! ## A273245.P16100620367616503848

`A007088(A057890(n+2)+A057890(n+2))`
-/

namespace A273245.P16100620367616503848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A057890 (n + 2) + A057890 (n + 2)).toNat

end

end A273245.P16100620367616503848

namespace A273245

/-- `A007088(A057890(n+2)+A057890(n+2))` -/
def P16100620367616503848.Spec : Prop :=
  ∀ n, P16100620367616503848.a n = A273245 (n + 1)

end A273245

/-! ## A273245.P4262874568484088969

`A099820(A161604(n+1))`
-/

namespace A273245.P4262874568484088969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A161604 (n + 1)).toNat

end

end A273245.P4262874568484088969

namespace A273245

/-- `A099820(A161604(n+1))` -/
def P4262874568484088969.Spec : Prop :=
  ∀ n, P4262874568484088969.a n = A273245 (n + 1)

end A273245

/-! ## A273245.P3072205112768738325

`A099820(A057890(n+2))`
-/

namespace A273245.P3072205112768738325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A057890 (n + 2)).toNat

end

end A273245.P3072205112768738325

namespace A273245

/-- `A099820(A057890(n+2))` -/
def P3072205112768738325.Spec : Prop :=
  ∀ n, P3072205112768738325.a n = A273245 (n + 1)

end A273245

/-! ## A273245.P925561811214585523

`A185544(2*A272670(n+1))`
-/

namespace A273245.P925561811214585523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A272670 (n + 1)).toNat

end

end A273245.P925561811214585523

namespace A273245

/-- `A185544(2*A272670(n+1))` -/
def P925561811214585523.Spec : Prop :=
  ∀ n, P925561811214585523.a n = A273245 (n + 1)

end A273245

/-! ## A273245.P16030038766584663117

`∩[A118959(n+1), A007088(n)]`
-/

namespace A273245.P16030038766584663117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273245.P16030038766584663117

namespace A273245

/-- `∩[A118959(n+1), A007088(n)]` -/
def P16030038766584663117.Spec : Prop :=
  ∀ n, (P16030038766584663117.a n : ℤ) = A273245 (n + 1)

end A273245

/-! ## A273245.P16162479576985586301

`∩[A118959(n+1), A099820(n)]`
-/

namespace A273245.P16162479576985586301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273245.P16162479576985586301

namespace A273245

/-- `∩[A118959(n+1), A099820(n)]` -/
def P16162479576985586301.Spec : Prop :=
  ∀ n, (P16162479576985586301.a n : ℤ) = A273245 (n + 1)

end A273245

/-! ## A273245.P7478792342406375862

`∩[A273239(n+1), A007088(n)]`
-/

namespace A273245.P7478792342406375862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273245.P7478792342406375862

namespace A273245

/-- `∩[A273239(n+1), A007088(n)]` -/
def P7478792342406375862.Spec : Prop :=
  ∀ n, (P7478792342406375862.a n : ℤ) = A273245 (n + 1)

end A273245

/-!
# A273246: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A273246, there is no canonical definition to state claims against.
-/

/-! ## A273246.P7713051563507681269

`A273249(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273246.P7713051563507681269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273249 (n - 1) + a (n - 1)

end

end A273246.P7713051563507681269

/-! ## A273246.P3945508908149679543

`A016754(n)-A157928(n+1)*A272085(n)`
-/

namespace A273246.P3945508908149679543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A157928 (n + 1) * A272085 n

end

end A273246.P3945508908149679543

/-! ## A273246.P2311708241087156658

`A181385(4*n+2)-A272085(n)`
-/

namespace A273246.P2311708241087156658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A272085 n

end

end A273246.P2311708241087156658

/-! ## A273246.P15797380494724119277

`Δ[A273248(n)]-A273249(n)`
-/

namespace A273246.P15797380494724119277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273249 n

end

end A273246.P15797380494724119277

/-! ## A273246.P4364989530028371130

`A273248(n+1)-(A273249(n)+A273248(n))`
-/

namespace A273246.P4364989530028371130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273248 (n + 1) - (A273249 n + A273248 n)

end

end A273246.P4364989530028371130

/-! ## A273246.P8404708284011034006

`A008740(A008458(n))-A272085(n)`
-/

namespace A273246.P8404708284011034006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272085 n

end

end A273246.P8404708284011034006

/-! ## A273246.P1720233675158576124

`A069894(n)-A153152(A272085(n))`
-/

namespace A273246.P1720233675158576124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A153152 (A272085 n).toNat

end

end A273246.P1720233675158576124

/-! ## A273246.P11907630653222557555

`A254667(A016754(n))-A272085(n)`
-/

namespace A273246.P11907630653222557555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A016754 n).toNat - A272085 n

end

end A273246.P11907630653222557555

/-!
# A273247: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A273247, there is no canonical definition to state claims against.
-/

/-! ## A273247.P6027886147003736198

`A273246(2^n-1)`
-/

namespace A273247.P6027886147003736198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 (2 ^ n - 1)

end

end A273247.P6027886147003736198

/-! ## A273247.P14816550419672224

`record[A273246(A038573(n))]`
-/

namespace A273247.P14816550419672224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273247.P14816550419672224

/-! ## A273247.P13196138224416219390

`record[A273246(A227351(n))]`
-/

namespace A273247.P13196138224416219390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273247.P13196138224416219390

/-! ## A273247.P1452173284120341823

`record[A273246(A232751(n))]`
-/

namespace A273247.P1452173284120341823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273247.P1452173284120341823

/-! ## A273247.P7370003511808067023

`record[A273246(A302029(n+1))]`
-/

namespace A273247.P7370003511808067023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273247.P7370003511808067023

/-!
# A273248: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A273248, there is no canonical definition to state claims against.
-/

/-! ## A273248.P8454838647584006284

`∑[A273246(n)]`
-/

namespace A273248.P8454838647584006284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273248.P8454838647584006284

/-! ## A273248.P8681961668708655849

`A273246(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A273248.P8681961668708655849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273246 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A273248.P8681961668708655849

/-! ## A273248.P8712502461667668321

`∑[A181385(A016825(n))-A272085(n)]`
-/

namespace A273248.P8712502461667668321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273248.P8712502461667668321

/-! ## A273248.P16785565645517965754

`∑[A181385(A016825(n))]-A272087(n)`
-/

namespace A273248.P16785565645517965754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272087 n

end

end A273248.P16785565645517965754

/-! ## A273248.P14431719499943347673

`∑[A008740(A008458(n))]-A272087(n)`
-/

namespace A273248.P14431719499943347673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272087 n

end

end A273248.P14431719499943347673

/-! ## A273248.P1291516109098668876

`A273246(n^A133707(n))+a(n-1)` with `a(0)=1`
-/

namespace A273248.P1291516109098668876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273246 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A133707 n : ℤ))).toNat + a (n - 1)

end

end A273248.P1291516109098668876

/-!
# A273249: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A273249, there is no canonical definition to state claims against.
-/

/-! ## A273249.P13681472570164029186

`Δ[A273246(n)]`
-/

namespace A273249.P13681472570164029186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273249.P13681472570164029186

/-! ## A273249.P4411171250306675240

`A273246(n+1)-A273246(n)`
-/

namespace A273249.P4411171250306675240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273246 (n + 1) - A273246 n

end

end A273249.P4411171250306675240

/-! ## A273249.P11094035599188450031

`Δ[A181385(A016825(n))-A272085(n)]`
-/

namespace A273249.P11094035599188450031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273249.P11094035599188450031

/-! ## A273249.P14624454750883709104

`Δ[A181385(A016825(n))]-A272088(n)`
-/

namespace A273249.P14624454750883709104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272088 n

end

end A273249.P14624454750883709104

/-! ## A273249.P9180952652692950599

`Δ[A008740(A008458(n))]-A272088(n)`
-/

namespace A273249.P9180952652692950599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272088 n

end

end A273249.P9180952652692950599

/-!
# A273250: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

The programs for A273250, there is no canonical definition to state claims against.
-/

/-! ## A273250.P14944337338219084892

`A273253(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273250.P14944337338219084892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273253 (n - 1) + a (n - 1)

end

end A273250.P14944337338219084892

/-! ## A273250.P3316680573394829379

`a(n-1)-(A000007(n)-A273253(n-1))` with `a(0)=1`
-/

namespace A273250.P3316680573394829379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A273253 (n - 1))

end

end A273250.P3316680573394829379

/-! ## A273250.P1385804316189964787

`Δ[A273252(n)]-A273253(n)`
-/

namespace A273250.P1385804316189964787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273253 n

end

end A273250.P1385804316189964787

/-! ## A273250.P1338350661758015346

`A273252(n+1)-(A273253(n)+A273252(n))`
-/

namespace A273250.P1338350661758015346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273252 (n + 1) - (A273253 n + A273252 n)

end

end A273250.P1338350661758015346

/-! ## A273250.P10479089866703956169

`a(n-1)-(A008683(A016778(n))-A273253(n-1))` with `a(0)=1`
-/

namespace A273250.P10479089866703956169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A008683 (A016778 n).toNat - A273253 (n - 1))

end

end A273250.P10479089866703956169

/-!
# A273251: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

The programs for A273251, the canonical program `A273251.P17702948702381260396` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273251 has offset 0).

The definition of A273251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273251.P17702948702381260396

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=37, a(3)=181`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A273251

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P17702948702381260396.Spec : Prop :=
  ∀ n, P17702948702381260396.a n = A273251 n

theorem P17702948702381260396.correct : P17702948702381260396.Spec := by
  intro n
  simp only [A273251]

end A273251

/-! ## A273251.P13715178482113661732

`4*(2^n+a(n-1)-1)+5` with `a(0)=1, a(1)=5`
-/

namespace A273251.P13715178482113661732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * ((2 ^ n : ℤ) + (a (n - 1) - 1)) + 5

end

end A273251.P13715178482113661732

namespace A273251

/-- `4*(2^n+a(n-1)-1)+5` -/
def P13715178482113661732.Spec : Prop :=
  ∀ n, P13715178482113661732.a n = A273251 n

end A273251

/-! ## A273251.P7451550126798557479

`∑[4^n-2^n]+abs(1-4*C(2^n, 2))`
-/

namespace A273251.P7451550126798557479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + |1 - (4 * Nat.choose (2 ^ n) 2 : ℤ)|

end

end A273251.P7451550126798557479

namespace A273251

/-- `∑[4^n-2^n]+abs(1-4*C(2^n, 2))` -/
def P7451550126798557479.Spec : Prop :=
  ∀ n, P7451550126798557479.a n = A273251 n

end A273251

/-! ## A273251.P15366079555978259122

`abs(A020707(n)-A072197(n))`
-/

namespace A273251.P15366079555978259122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020707 n - A072197 n|

end

end A273251.P15366079555978259122

namespace A273251

/-- `abs(A020707(n)-A072197(n))` -/
def P15366079555978259122.Spec : Prop :=
  ∀ n, P15366079555978259122.a n = A273251 n

end A273251

/-! ## A273251.P8823088143426771556

`abs(A000051(n)-A171478(n))`
-/

namespace A273251.P8823088143426771556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A171478 n|

end

end A273251.P8823088143426771556

namespace A273251

/-- `abs(A000051(n)-A171478(n))` -/
def P8823088143426771556.Spec : Prop :=
  ∀ n, P8823088143426771556.a n = A273251 n

end A273251

/-! ## A273251.P12148743888305173771

`A267816(n)+∑[A020522(n)]`
-/

namespace A273251.P12148743888305173771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267816 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273251.P12148743888305173771

namespace A273251

/-- `A267816(n)+∑[A020522(n)]` -/
def P12148743888305173771.Spec : Prop :=
  ∀ n, P12148743888305173771.a n = A273251 n

end A273251

/-! ## A273251.P14937709625110970924

`abs(A000079(n+2)-A072197(n))`
-/

namespace A273251.P14937709625110970924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 2) - A072197 n|

end

end A273251.P14937709625110970924

namespace A273251

/-- `abs(A000079(n+2)-A072197(n))` -/
def P14937709625110970924.Spec : Prop :=
  ∀ n, P14937709625110970924.a n = A273251 n

end A273251

/-! ## A273251.P8110098296181938145

`A267816(n)+∑[2*A006516(n)]`
-/

namespace A273251.P8110098296181938145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267816 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273251.P8110098296181938145

namespace A273251

/-- `A267816(n)+∑[2*A006516(n)]` -/
def P8110098296181938145.Spec : Prop :=
  ∀ n, P8110098296181938145.a n = A273251 n

end A273251

/-! ## A273251.P5986379491793645890

`A211012(n)+A211012(n)+A002450(n+1)`
-/

namespace A273251.P5986379491793645890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211012 n + (A211012 n + A002450 (n + 1))

end

end A273251.P5986379491793645890

namespace A273251

/-- `A211012(n)+A211012(n)+A002450(n+1)` -/
def P5986379491793645890.Spec : Prop :=
  ∀ n, P5986379491793645890.a n = A273251 n

end A273251

/-! ## A273251.P15630366446670947924

`A171478(n)-record[A271710(n)]`
-/

namespace A273251.P15630366446670947924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171478 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273251.P15630366446670947924

namespace A273251

/-- `A171478(n)-record[A271710(n)]` -/
def P15630366446670947924.Spec : Prop :=
  ∀ n, P15630366446670947924.a n = A273251 n

end A273251

/-!
# A273252: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

The programs for A273252, there is no canonical definition to state claims against.
-/

/-! ## A273252.P1005550272183508582

`∑[A273250(n)]`
-/

namespace A273252.P1005550272183508582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273252.P1005550272183508582

/-! ## A273252.P11534314885244632692

`a(n-1)+A273250(n)+A000007(n)` with `a(0)=1`
-/

namespace A273252.P11534314885244632692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273250 n + A000007 n)

end

end A273252.P11534314885244632692

/-! ## A273252.P10796667822366294035

`A273250(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273252.P10796667822366294035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273250 (A004526 (n + n)).toNat + a (n - 1)

end

end A273252.P10796667822366294035

/-! ## A273252.P14142965071201532752

`A273250(A000290(n)/n)+a(n-1)` with `a(0)=1`
-/

namespace A273252.P14142965071201532752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273250 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A273252.P14142965071201532752

/-! ## A273252.P5361759748714575708

`A273250(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A273252.P5361759748714575708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273250 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A273252.P5361759748714575708

/-! ## A273252.P11081410949304153114

`∑[A273253(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273252.P11081410949304153114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273253 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273252.P11081410949304153114

/-! ## A273252.P16460329679440404164

`A273250(n+1)+a(n-1)-A273253(n)` with `a(0)=1`
-/

namespace A273252.P16460329679440404164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273250 (n + 1) + (a (n - 1) - A273253 n)

end

end A273252.P16460329679440404164

/-!
# A273253: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

The programs for A273253, there is no canonical definition to state claims against.
-/

/-! ## A273253.P16124582648830045481

`Δ[A273250(n)]`
-/

namespace A273253.P16124582648830045481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273253.P16124582648830045481

/-! ## A273253.P18140064217969745610

`A273250(n+1)-A273250(n)`
-/

namespace A273253.P18140064217969745610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273250 (n + 1) - A273250 n

end

end A273253.P18140064217969745610

/-! ## A273253.P14099606946336870236

`A273250(n+1)+A001489(A273250(n)+1)+1`
-/

namespace A273253.P14099606946336870236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273250 (n + 1) + (A001489 (A273250 n + 1).toNat + 1)

end

end A273253.P14099606946336870236

/-! ## A273253.P799443820276627461

`A316489(floor(log(A268448(3*n+4))))`
-/

namespace A273253.P799443820276627461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316489 ⌊Real.log (A268448 (3 * n + 4) : ℝ)⌋.toNat

end

end A273253.P799443820276627461

/-! ## A273253.P13293387984679104766

`∑[A169784(A235704(∏{e}[n+1, 4*#]))]`
-/

namespace A273253.P13293387984679104766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (A235704 (∏ p ∈ Nat.primeFactors (f2 n), 4 * Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273253.P13293387984679104766

/-!
# A273255: Isolated deficient numbers that are divisible by 3.

The programs for A273255, there is no canonical definition to state claims against.
-/

/-! ## A273255.P7226845125520898486

`3*A273125(n+1)`
-/

namespace A273255.P7226845125520898486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A273125 (n + 1)

end

end A273255.P7226845125520898486

/-! ## A273255.P6916115923255503259

`A269379(A273125(n+1)+1)`
-/

namespace A273255.P6916115923255503259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A273125 (n + 1) + 1).toNat

end

end A273255.P6916115923255503259

/-! ## A273255.P5323276956432321829

`A016945(floor(A273125(n+1)/2))`
-/

namespace A273255.P5323276956432321829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 ⌊(A273125 (n + 1) : ℚ) / 2⌋.toNat

end

end A273255.P5323276956432321829

/-! ## A273255.P3818713712408792615

`A016945((A273125(n+1)-1)/2)`
-/

namespace A273255.P3818713712408792615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (SequenceMachineLib.roundAway ((A273125 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A273255.P3818713712408792615

/-! ## A273255.P1264749031697798944

`A008486(A273125(n+1))`
-/

namespace A273255.P1264749031697798944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A273125 (n + 1)).toNat

end

end A273255.P1264749031697798944

/-!
# A273256: Number of simple labeled graphs on n vertices with at most one nontrivial component and all vertex degrees are even.

The programs for A273256, there is no canonical definition to state claims against.
-/

/-! ## A273256.P12139068138991566888

`A064413(A153561(floor(n-atan(n))))`
-/

namespace A273256.P12139068138991566888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A153561 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A273256.P12139068138991566888

/-! ## A273256.P7047402497692449401

`A064413(A153569(floor(n-atan(n))))`
-/

namespace A273256.P7047402497692449401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A153569 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A273256.P7047402497692449401

/-! ## A273256.P5073494717297173043

`A103378(p?[A103372(3*(n+1))+3])`
-/

namespace A273256.P5073494717297173043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (3 * (n + 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A273256.P5073494717297173043

/-!
# A273257: Number of twin primes between prime(n) and prime(n)^2.

The programs for A273257, there is no canonical definition to state claims against.
-/

/-! ## A273257.P14705018000692668560

`floor(A308777(n+1)/2)`
-/

namespace A273257.P14705018000692668560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A308777 (n + 1) : ℚ) / 2⌋

end

end A273257.P14705018000692668560

/-! ## A273257.P3426072791442653629

`(or(A057427(n), A308777(n+1))-1)/2`
-/

namespace A273257.P3426072791442653629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A057427 n) (A308777 (n + 1)) - 1 : ℚ) / 2

end

end A273257.P3426072791442653629

/-! ## A273257.P7881139118163892062

`(or(1, A308777(A008619(2*n)))-1)/2`
-/

namespace A273257.P7881139118163892062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A308777 (A008619 (2 * n)).toNat) - 1 : ℚ) / 2

end

end A273257.P7881139118163892062

/-! ## A273257.P16142165730079742655

`(or(A008683(A317670(n+1))², A308777(n+1))-1)/2`
-/

namespace A273257.P16142165730079742655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A008683 (A317670 (n + 1)).toNat ^ 2) (A308777 (n + 1)) - 1 : ℚ) / 2

end

end A273257.P16142165730079742655

/-! ## A273257.P13187634325418779768

`A249122(or(1, A308777(n+1)))`
-/

namespace A273257.P13187634325418779768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (Int.lor 1 (A308777 (n + 1))).toNat

end

end A273257.P13187634325418779768

/-! ## A273257.P3449596528237970444

`A004526(A308777(n+1))`
-/

namespace A273257.P3449596528237970444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A308777 (n + 1)).toNat

end

end A273257.P3449596528237970444

/-! ## A273257.P15877066493645032475

`A110654(A308777(n+1)-1)`
-/

namespace A273257.P15877066493645032475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A308777 (n + 1) - 1).toNat

end

end A273257.P15877066493645032475

/-! ## A273257.P17037911595077216470

`A140106(A308777(n+1)+2)`
-/

namespace A273257.P17037911595077216470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A308777 (n + 1) + 2).toNat

end

end A273257.P17037911595077216470

/-! ## A273257.P1995969543265597647

`A004524(or(1, A308777(n+1)))`
-/

namespace A273257.P1995969543265597647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A308777 (n + 1))).toNat

end

end A273257.P1995969543265597647

/-! ## A273257.P14775647823040338750

`A057979(or(1, A308777(n+1)))`
-/

namespace A273257.P14775647823040338750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A308777 (n + 1))).toNat

end

end A273257.P14775647823040338750

/-! ## A273257.P14262056644900292664

`abs(A001057(A308777(n+1)-1))`
-/

namespace A273257.P14262056644900292664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A308777 (n + 1) - 1).toNat|

end

end A273257.P14262056644900292664

/-! ## A273257.P9458667257298653447

`A065033(A308777(n+1)+1)-1`
-/

namespace A273257.P9458667257298653447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A308777 (n + 1) + 1).toNat - 1

end

end A273257.P9458667257298653447

/-! ## A273257.P15413961187851595943

`A008619(A308777(n+1))-char[A001057(n)]`
-/

namespace A273257.P15413961187851595943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273257.P15413961187851595943

/-! ## A273257.P15877802680630993056

`A008619(A308777(n+1))-char[A002251(n)]`
-/

namespace A273257.P15877802680630993056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273257.P15877802680630993056

/-! ## A273257.P5627718451377776123

`A008619(A308777(n+1))-char[A003188(n)]`
-/

namespace A273257.P5627718451377776123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273257.P5627718451377776123

/-! ## A273257.P13735865303580469608

`A008619(A308777(n+1))-A000032(gcd(n, n+1))`
-/

namespace A273257.P13735865303580469608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - A000032 (Nat.gcd n (n + 1))

end

end A273257.P13735865303580469608

/-! ## A273257.P7078737019780725879

`A008619(A308777(n+1))-A000032(((-1)^n)²)`
-/

namespace A273257.P7078737019780725879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - A000032 (((-1) ^ n) ^ 2).toNat

end

end A273257.P7078737019780725879

/-! ## A273257.P17984072828987523632

`A008619(A308777(n+1))-A000045(((-1)^n)²)`
-/

namespace A273257.P17984072828987523632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - A000045 (((-1) ^ n) ^ 2).toNat

end

end A273257.P17984072828987523632

/-! ## A273257.P1498403591377308814

`A008619(A308777(n+1))-A001222(A002146(n))`
-/

namespace A273257.P1498403591377308814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - A001222 (A002146 n).toNat

end

end A273257.P1498403591377308814

/-! ## A273257.P8241897580761856163

`A008619(A308777(n+1))-A008683(A005117(n+1))²`
-/

namespace A273257.P8241897580761856163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308777 (n + 1)).toNat - A008683 (A005117 (n + 1)).toNat ^ 2

end

end A273257.P8241897580761856163

/-!
# A273258: Write the distinct prime divisors p of n in the (PrimePi(p) - 1)-th place, ignoring multiplicity. Decode the resulting number after first reversing the code, ignoring any leading zeros.

The programs for A273258, there is no canonical definition to state claims against.
-/

/-! ## A273258.P7807948811963684715

`A019565(A030101(A087207(n+1)))`
-/

namespace A273258.P7807948811963684715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A030101 (A087207 (n + 1)).toNat).toNat

end

end A273258.P7807948811963684715

/-! ## A273258.P3225656039318624104

`A137502(∏{p}[n+1, #])`
-/

namespace A273258.P3225656039318624104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A273258.P3225656039318624104

/-! ## A273258.P8164972120379219831

`A137502(A007947(n+1))`
-/

namespace A273258.P8164972120379219831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A007947 (n + 1)).toNat

end

end A273258.P8164972120379219831

/-! ## A273258.P3329581792804140693

`A137502(A015052(A015052(n+1)))`
-/

namespace A273258.P3329581792804140693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A015052 (A015052 (n + 1)).toNat).toNat

end

end A273258.P3329581792804140693

/-! ## A273258.P5656624598120804610

`A137502(A015053(A015053(n+1)))`
-/

namespace A273258.P5656624598120804610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A015053 (A015053 (n + 1)).toNat).toNat

end

end A273258.P5656624598120804610

/-! ## A273258.P9782483196536095806

`A137502(A328915(n+1))`
-/

namespace A273258.P9782483196536095806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A328915 (n + 1)).toNat

end

end A273258.P9782483196536095806

/-! ## A273258.P2316325287583049699

`gcd(A137502(n+1), A186944(n+1))`
-/

namespace A273258.P2316325287583049699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137502 (n + 1)) (A186944 (n + 1))

end

end A273258.P2316325287583049699

/-! ## A273258.P14128772855980396644

`A019565(A087207(A137502(n+1)))`
-/

namespace A273258.P14128772855980396644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A087207 (A137502 (n + 1)).toNat).toNat

end

end A273258.P14128772855980396644

/-!
# A273261: Irregular triangle read by rows: T(n,k) = sum of the elements of the k-th row of the difference table of the divisors of n.

The programs for A273261, there is no canonical definition to state claims against.
-/

/-! ## A273261.P6080524005114879279

`A274531(n+1)-A096994(A010894(n))`
-/

namespace A273261.P6080524005114879279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274531 (n + 1) - A096994 (A010894 (n + 21)).toNat

end

end A273261.P6080524005114879279

/-! ## A273261.P4825684179222767291

`A274531(∑[A010894(n)!])`
-/

namespace A273261.P4825684179222767291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274531 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273261.P4825684179222767291

/-! ## A273261.P8939500993212691647

`A274531(n+1)%Δ[A176661(n)]`
-/

namespace A273261.P8939500993212691647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274531 (n + 1)) (f1 (n + 1) - f1 n)

end

end A273261.P8939500993212691647

/-! ## A273261.P11802282726785734465

`floor(atan(A274512(n+5)))*A274531(n+1)`
-/

namespace A273261.P11802282726785734465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A274512 (n + 5) : ℝ)⌋ * A274531 (n + 1)

end

end A273261.P11802282726785734465

/-! ## A273261.P384524181507562620

`lcm(A165326(A225910(n)), A274531(n+1))`
-/

namespace A273261.P384524181507562620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 (A225910 n).toNat) (A274531 (n + 1))

end

end A273261.P384524181507562620

/-!
# A273262: Irregular triangle read by rows: T(n,k) = sum of the elements of the k-th antidiagonal of the difference table of the divisors of n.

The programs for A273262, there is no canonical definition to state claims against.
-/

/-! ## A273262.P3758144478628359295

`A274532(n+1)-A004524(A010894(n))`
-/

namespace A273262.P3758144478628359295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274532 (n + 1) - A004524 (A010894 (n + 21)).toNat

end

end A273262.P3758144478628359295

/-! ## A273262.P10349081170707155507

`A274532(∑[A010894(n)!])`
-/

namespace A273262.P10349081170707155507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273262.P10349081170707155507

/-! ## A273262.P11168066005495477147

`A274532(A010894(n)!+n)`
-/

namespace A273262.P11168066005495477147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274532 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A273262.P11168066005495477147

/-! ## A273262.P16351098770078470171

`A274532(n+1)%A262409(n+3)`
-/

namespace A273262.P16351098770078470171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274532 (n + 1)) (A262409 (n + 3))

end

end A273262.P16351098770078470171

/-! ## A273262.P15535452450074820812

`A274532(and(1, A349820(n+1))+n)`
-/

namespace A273262.P15535452450074820812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274532 (Int.land 1 (A349820 (n + 1)) + (n : ℤ)).toNat

end

end A273262.P15535452450074820812

/-!
# A273263: Irregular triangle read by rows: T(n,k) is the sum of the elements of the k-th column of the difference table of the divisors of n.

The programs for A273263, there is no canonical definition to state claims against.
-/

/-! ## A273263.P2299898663483161892

`or(A016018(n)%2, A274533(n+1))`
-/

namespace A273263.P2299898663483161892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A016018 n) 2) (A274533 (n + 1))

end

end A273263.P2299898663483161892

/-! ## A273263.P3970799186448042659

`A274533(n+1)%record[A186008(n+5)]`
-/

namespace A273263.P3970799186448042659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186008 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274533 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A273263.P3970799186448042659

/-! ## A273263.P8820353793428063991

`A274533(n+1)+A010051(A005898(n))`
-/

namespace A273263.P8820353793428063991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274533 (n + 1) + A010051 (A005898 n).toNat

end

end A273263.P8820353793428063991

/-! ## A273263.P8071337765153508873

`A057427(A344607(n))*A274533(n+1)`
-/

namespace A273263.P8071337765153508873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A344607 n).toNat * A274533 (n + 1)

end

end A273263.P8071337765153508873

/-! ## A273263.P9896086043956128412

`A274533(n+1)%A005101(A001522(n))`
-/

namespace A273263.P9896086043956128412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274533 (n + 1)) (A005101 (A001522 n).toNat)

end

end A273263.P9896086043956128412

/-!
# A273264: Volume of unit n-ball, rounded to the nearest integer.

The programs for A273264, there is no canonical definition to state claims against.
-/

/-! ## A273264.P17273304577244057159

`floor((14/(n+1))^((n+1)/3))`
-/

namespace A273264.P17273304577244057159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(14 / (n + 1 : ℚ) : ℝ) ^ ((n + 1 : ℚ) / 3 : ℝ)⌋

end

end A273264.P17273304577244057159

/-!
# A273265: Numbers k such that (16*10^k + 161)/3 is prime.

The programs for A273265, there is no canonical definition to state claims against.
-/

/-! ## A273265.P4421669993030725187

`eq[A003989(n+1), A333333(A339671(n+1))]`
-/

namespace A273265.P4421669993030725187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333333 (A339671 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273265.P4421669993030725187

/-! ## A273265.P8933638449954332977

`lt[A005897(n), A335886(A000040(3*n+4))]`
-/

namespace A273265.P8933638449954332977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335886 (A000040 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273265.P8933638449954332977

/-!
# A273266: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A273266, there is no canonical definition to state claims against.
-/

/-! ## A273266.P13711596108531871379

`A273269(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273266.P13711596108531871379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273269 (n - 1) + a (n - 1)

end

end A273266.P13711596108531871379

/-! ## A273266.P1666614489999778330

`Δ[A273268(n)]-A273269(n)`
-/

namespace A273266.P1666614489999778330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273269 n

end

end A273266.P1666614489999778330

/-! ## A273266.P5346659493073219840

`A273268(n+1)-(A273269(n)+A273268(n))`
-/

namespace A273266.P5346659493073219840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273268 (n + 1) - (A273269 n + A273268 n)

end

end A273266.P5346659493073219840

/-! ## A273266.P11442551788272150506

`A273268(A000027(n+1))%(A273269(n)+A273268(n))`
-/

namespace A273266.P11442551788272150506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273268 (A000027 (n + 1)).toNat) (A273269 n + A273268 n)

end

end A273266.P11442551788272150506

/-!
# A273267: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A273267, there is no canonical definition to state claims against.
-/

/-! ## A273267.P950519879749133825

`A273266(2^n-1)`
-/

namespace A273267.P950519879749133825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (2 ^ n - 1)

end

end A273267.P950519879749133825

/-! ## A273267.P658128221244357422

`record[A273266(A153151(n))]`
-/

namespace A273267.P658128221244357422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (A153151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273267.P658128221244357422

/-! ## A273267.P3106921165085613488

`record[A273266(A173787(n))]`
-/

namespace A273267.P3106921165085613488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273267.P3106921165085613488

/-! ## A273267.P8141974877854730983

`record[A273266(A232751(n))]`
-/

namespace A273267.P8141974877854730983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273267.P8141974877854730983

/-! ## A273267.P11628256222931279031

`record[A273266(A255067(n))]`
-/

namespace A273267.P11628256222931279031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273267.P11628256222931279031

/-!
# A273268: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A273268, there is no canonical definition to state claims against.
-/

/-! ## A273268.P18271455359968032369

`∑[A273266(n)]`
-/

namespace A273268.P18271455359968032369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273268.P18271455359968032369

/-! ## A273268.P8478133247578404869

`A273266(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273268.P8478133247578404869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273266 n + a (A023443 n).toNat

end

end A273268.P8478133247578404869

/-! ## A273268.P12557361120234942731

`∑[∑[A273269(n)]+1-A273269(n)]`
-/

namespace A273268.P12557361120234942731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273269 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273269 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273268.P12557361120234942731

/-! ## A273268.P17362149748764257552

`A273266(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A273268.P17362149748764257552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273266 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A273268.P17362149748764257552

/-! ## A273268.P2300125460831066065

`a(n-1)+A273266(n)%A008423(A008574(n))` with `a(0)=1`
-/

namespace A273268.P2300125460831066065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273266 n) (A008423 (A008574 n).toNat)

end

end A273268.P2300125460831066065

/-! ## A273268.P5390687952819934523

`a(n-1)+A273266(n)^A007318(A000096(n))` with `a(0)=1`
-/

namespace A273268.P5390687952819934523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273266 n : ℚ) ^ (A007318 (A000096 n).toNat : ℤ)

end

end A273268.P5390687952819934523

/-!
# A273269: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A273269, there is no canonical definition to state claims against.
-/

/-! ## A273269.P10492834346663172210

`Δ[A273266(n)]`
-/

namespace A273269.P10492834346663172210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273269.P10492834346663172210

/-! ## A273269.P57317301129954783

`A273266(n+1)-A273266(n)`
-/

namespace A273269.P57317301129954783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (n + 1) - A273266 n

end

end A273269.P57317301129954783

/-! ## A273269.P17320979484632299852

`A273266(A023443(n+2))+A001478(A273266(n))`
-/

namespace A273269.P17320979484632299852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (A023443 (n + 2)).toNat + A001478 (A273266 n).toNat

end

end A273269.P17320979484632299852

/-! ## A273269.P5139043454380689277

`A273266(A077168(n))+A001478(A273266(n))`
-/

namespace A273269.P5139043454380689277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273266 (A077168 n).toNat + A001478 (A273266 n).toNat

end

end A273269.P5139043454380689277

/-!
# A273270: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A273270, there is no canonical definition to state claims against.
-/

/-! ## A273270.P4192078032986057953

`(2*n+1)²-A246326(n)%A003215(n)`
-/

namespace A273270.P4192078032986057953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A246326 n) (A003215 n)

end

end A273270.P4192078032986057953

/-! ## A273270.P13267393891600393264

`A000007(n)+A016754(n)-A246326(n)`
-/

namespace A273270.P13267393891600393264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A246326 n)

end

end A273270.P13267393891600393264

/-! ## A273270.P5967591350265548538

`A016754(n)-A057427(n)*A246326(n)`
-/

namespace A273270.P5967591350265548538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A057427 n * A246326 n

end

end A273270.P5967591350265548538

/-! ## A273270.P2095857542179381323

`(A016754(n)-A246326(n))^and(1, A000040(n+1))`
-/

namespace A273270.P2095857542179381323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n - A246326 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A273270.P2095857542179381323

/-! ## A273270.P10918273036023343060

`A008683(A008574(n))+A016754(n)-A246326(n)`
-/

namespace A273270.P10918273036023343060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A016754 n - A246326 n)

end

end A273270.P10918273036023343060

/-! ## A273270.P11460804249733194061

`A273273(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273270.P11460804249733194061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273273 (n - 1) + a (n - 1)

end

end A273270.P11460804249733194061

/-! ## A273270.P15110793988280141576

`Δ[A273272(n)]-A273273(n)`
-/

namespace A273270.P15110793988280141576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273273 n

end

end A273270.P15110793988280141576

/-! ## A273270.P17482118756868603199

`A273272(n+1)-(A273273(n)+A273272(n))`
-/

namespace A273270.P17482118756868603199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273272 (n + 1) - (A273273 n + A273272 n)

end

end A273270.P17482118756868603199

/-! ## A273270.P12285947900098812921

`A181385(A016825(n))-A246326(n)`
-/

namespace A273270.P12285947900098812921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A246326 n

end

end A273270.P12285947900098812921

/-! ## A273270.P6506145963881206874

`A008740(A008458(n))-A246326(n)`
-/

namespace A273270.P6506145963881206874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A246326 n

end

end A273270.P6506145963881206874

/-!
# A273271: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A273271, there is no canonical definition to state claims against.
-/

/-! ## A273271.P12559369804978333462

`A273270(2^n-1)`
-/

namespace A273271.P12559369804978333462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 (2 ^ n - 1)

end

end A273271.P12559369804978333462

/-! ## A273271.P4631904616629117620

`record[A273270(A038573(n))]`
-/

namespace A273271.P4631904616629117620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273271.P4631904616629117620

/-! ## A273271.P7194564092790215044

`record[A273270(A091264(n))]`
-/

namespace A273271.P7194564092790215044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273271.P7194564092790215044

/-! ## A273271.P8381371756653225139

`record[A273270(A218616(n))]`
-/

namespace A273271.P8381371756653225139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273271.P8381371756653225139

/-! ## A273271.P18081500756021857198

`record[A273270(A227351(n))]`
-/

namespace A273271.P18081500756021857198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273271.P18081500756021857198

/-!
# A273272: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A273272, there is no canonical definition to state claims against.
-/

/-! ## A273272.P11537525409151202496

`∑[Δ[n²]²-A246326(n)]+1`
-/

namespace A273272.P11537525409151202496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - A246326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273272.P11537525409151202496

/-! ## A273272.P17684370419823943888

`∑[A016754(n)-A246326(n)%A003215(n)]`
-/

namespace A273272.P17684370419823943888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A246326 n) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273272.P17684370419823943888

/-! ## A273272.P16842966940544738874

`∑[A273270(n)]`
-/

namespace A273272.P16842966940544738874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273272.P16842966940544738874

/-! ## A273272.P15343020096879128863

`A273270(n%A004770(n))+a(n-1)` with `a(0)=1`
-/

namespace A273272.P15343020096879128863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273270 (Int.tmod (n : ℤ) (A004770 n)).toNat + a (n - 1)

end

end A273272.P15343020096879128863

/-! ## A273272.P6223677396716711525

`a(n-1)+A273270(n)%A079704(n+1)` with `a(0)=1`
-/

namespace A273272.P6223677396716711525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273270 n) (A079704 (n + 1))

end

end A273272.P6223677396716711525

/-! ## A273272.P15454875102721953108

`∑[A273273(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273272.P15454875102721953108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273273 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273272.P15454875102721953108

/-! ## A273272.P8191910859251193741

`∑[A181385(A016825(n))-A246326(n)]`
-/

namespace A273272.P8191910859251193741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A246326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273272.P8191910859251193741

/-! ## A273272.P9305793649504033065

`∑[A008740(A008458(n))-A246326(n)]`
-/

namespace A273272.P9305793649504033065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A246326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273272.P9305793649504033065

/-! ## A273272.P18018204861555103527

`A273270(n)+a(n-1)%A006234(n+3)` with `a(0)=1`
-/

namespace A273272.P18018204861555103527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273270 n + Int.tmod (a (n - 1)) (A006234 (n + 3))

end

end A273272.P18018204861555103527

/-!
# A273273: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A273273, there is no canonical definition to state claims against.
-/

/-! ## A273273.P4868114541634519133

`Δ[A273270(n)]`
-/

namespace A273273.P4868114541634519133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273273.P4868114541634519133

/-! ## A273273.P10208213613765005444

`A273270(n+1)-A273270(n)`
-/

namespace A273273.P10208213613765005444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273270 (n + 1) - A273270 n

end

end A273273.P10208213613765005444

/-! ## A273273.P1436351896413694623

`Δ[A016754(n)-(A246326(n)+A057427(n))]`
-/

namespace A273273.P1436351896413694623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - (A246326 n + A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273273.P1436351896413694623

/-! ## A273273.P17241471869819743306

`Δ[A181385(A016825(n))-A246326(n)]`
-/

namespace A273273.P17241471869819743306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A246326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273273.P17241471869819743306

/-! ## A273273.P11858844722911746695

`Δ[A008740(A008458(n))-A246326(n)]`
-/

namespace A273273.P11858844722911746695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A246326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273273.P11858844722911746695

/-!
# A273274: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A273274, there is no canonical definition to state claims against.
-/

/-! ## A273274.P9919991270927283371

`A273277(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273274.P9919991270927283371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273277 (n - 1) + a (n - 1)

end

end A273274.P9919991270927283371

/-! ## A273274.P1964358652092918788

`1+∑[A273277(n)]-A273277(n)`
-/

namespace A273274.P1964358652092918788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A273277 n)

end

end A273274.P1964358652092918788

/-! ## A273274.P18317951555155566256

`A033999(2*n)-(A273277(n)-∑[A273277(n)])`
-/

namespace A273274.P18317951555155566256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) - (A273277 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273274.P18317951555155566256

/-! ## A273274.P2103840989616227425

`Δ[A273276(n)]-A273277(n)`
-/

namespace A273274.P2103840989616227425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273277 n

end

end A273274.P2103840989616227425

/-! ## A273274.P7936876524696549227

`A273276(n+1)-(A273277(n)+A273276(n))`
-/

namespace A273274.P7936876524696549227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273276 (n + 1) - (A273277 n + A273276 n)

end

end A273274.P7936876524696549227

/-! ## A273274.P8432489756849112566

`A000027(1-(A273277(n)-∑[A273277(n)]))`
-/

namespace A273274.P8432489756849112566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - (A273277 n - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A273274.P8432489756849112566

/-! ## A273274.P8580000024312812195

`A000265(1-(A273277(n)-∑[A273277(n)]))`
-/

namespace A273274.P8580000024312812195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 - (A273277 n - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A273274.P8580000024312812195

/-!
# A273275: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A273275, there is no canonical definition to state claims against.
-/

/-! ## A273275.P15195013235285148954

`A273274(2^n-1)`
-/

namespace A273275.P15195013235285148954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273274 (2 ^ n - 1)

end

end A273275.P15195013235285148954

/-! ## A273275.P13117449733910547192

`record[A273274(A232751(n))]`
-/

namespace A273275.P13117449733910547192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273274 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273275.P13117449733910547192

/-! ## A273275.P14350447841123078647

`or(1, A273274(A000225(n)))`
-/

namespace A273275.P14350447841123078647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273274 (A000225 n).toNat)

end

end A273275.P14350447841123078647

/-! ## A273275.P11950022667662127912

`record[A273274(A324875(n+1))]`
-/

namespace A273275.P11950022667662127912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273274 (A324875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273275.P11950022667662127912

/-! ## A273275.P11774511514118864985

`record[A273274(A059268(n)-1)]`
-/

namespace A273275.P11774511514118864985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273274 (A059268 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273275.P11774511514118864985

/-!
# A273276: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A273276, there is no canonical definition to state claims against.
-/

/-! ## A273276.P7489900896772573313

`∑[A273274(n)]`
-/

namespace A273276.P7489900896772573313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273276.P7489900896772573313

/-! ## A273276.P8418246446905046069

`∑[A273277(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273276.P8418246446905046069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273277 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273276.P8418246446905046069

/-! ## A273276.P1291894990086100091

`∑[∑[A273277(n)]+1-A273277(n)]`
-/

namespace A273276.P1291894990086100091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273276.P1291894990086100091

/-! ## A273276.P16047930463894263634

`a(n-1)+A273274(n)+A000038(n)` with `a(0)=1`
-/

namespace A273276.P16047930463894263634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273274 n + A000038 n)

end

end A273276.P16047930463894263634

/-! ## A273276.P9705777447351448071

`a(n-1)+A273274(n)%A160817(n)` with `a(0)=1`
-/

namespace A273276.P9705777447351448071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273274 n) (A160817 n)

end

end A273276.P9705777447351448071

/-!
# A273277: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A273277, there is no canonical definition to state claims against.
-/

/-! ## A273277.P770107901687364032

`Δ[A273274(n)]`
-/

namespace A273277.P770107901687364032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273277.P770107901687364032

/-! ## A273277.P14322241296700247094

`A273274(n+1)-A273274(n)`
-/

namespace A273277.P14322241296700247094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273274 (n + 1) - A273274 n

end

end A273277.P14322241296700247094

/-!
# A273278: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that x^2*y^2 + 3*y^2*z^2 + 2*z^2*w^2 is a square.

The programs for A273278, there is no canonical definition to state claims against.
-/

/-! ## A273278.P10517773350480896233

`A193848(A002102(n)%A175086(n+1))`
-/

namespace A273278.P10517773350480896233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193848 (Int.tmod (A002102 n) (A175086 (n + 1))).toNat

end

end A273278.P10517773350480896233

/-! ## A273278.P17391954672488240853

`A034444(A192041(2*(n+1))+A049029(n+3))`
-/

namespace A273278.P17391954672488240853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A192041 (2 * (n + 1)) + A049029 (n + 3)).toNat

end

end A273278.P17391954672488240853

/-! ## A273278.P4704241697454111128

`A178522(or(A000203(n+5), A119725(n+1)))`
-/

namespace A273278.P4704241697454111128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 (Int.lor (A000203 (n + 5)) (A119725 (n + 1))).toNat

end

end A273278.P4704241697454111128

/-! ## A273278.P15086612497692883177

`A335261(A183559(n+4)+A100565(3*n+1))`
-/

namespace A273278.P15086612497692883177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335261 (A183559 (n + 4) + A100565 (3 * n + 1)).toNat

end

end A273278.P15086612497692883177

/-!
# A273280: Number of topologically-distinct slicings of a square by n lines in general position.

The programs for A273280, there is no canonical definition to state claims against.
-/

/-! ## A273280.P16242761433708984510

`A272906(n)-A353428(ceil(2^(n-1)))`
-/

namespace A273280.P16242761433708984510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272906 n - A353428 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A273280.P16242761433708984510

/-! ## A273280.P12186528620844247673

`xor(A272906(n), A342853(A338921(n)))`
-/

namespace A273280.P12186528620844247673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A272906 n) (A342853 (A338921 n).toNat)

end

end A273280.P12186528620844247673

/-! ## A273280.P17873777615328232445

`A272906(n)-A046934(A006248(n+1))`
-/

namespace A273280.P17873777615328232445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272906 n - A046934 (A006248 (n + 1)).toNat

end

end A273280.P17873777615328232445

/-!
# A273282: Largest prime not exceeding the geometric mean of all prime divisors of n counted with multiplicity.

The programs for A273282, the canonical program `A273282.P4615267142029211613` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273282 has offset 2).

The definition of A273282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, A079866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273282.P4615267142029211613

`A007917(A079866(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273282

/-- `A007917(A079866(n+2))` -/
def P4615267142029211613.Spec : Prop :=
  ∀ n, P4615267142029211613.a n = A273282 (n + 2)

theorem P4615267142029211613.correct : P4615267142029211613.Spec := by
  intro n
  simp only [A273282, Nat.add_sub_cancel]

end A273282

/-! ## A273282.P15959716372303027977

`∑{p}[A273284(n+2), #]`
-/

namespace A273282.P15959716372303027977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273284 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A273282.P15959716372303027977

namespace A273282

/-- `∑{p}[A273284(n+2), #]` -/
def P15959716372303027977.Spec : Prop :=
  ∀ n, (P15959716372303027977.a n : ℤ) = A273282 (n + 2)

end A273282

/-! ## A273282.P1571302840293728334

`A006530(A273284(n+2))`
-/

namespace A273282.P1571302840293728334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273284 (n + 2)).toNat

end

end A273282.P1571302840293728334

namespace A273282

/-- `A006530(A273284(n+2))` -/
def P1571302840293728334.Spec : Prop :=
  ∀ n, P1571302840293728334.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P8703867167865840285

`A020639(∑{d}[A273284(n+2), A000010(#)])`
-/

namespace A273282.P8703867167865840285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A273282.P8703867167865840285

namespace A273282

/-- `A020639(∑{d}[A273284(n+2), A000010(#)])` -/
def P8703867167865840285.Spec : Prop :=
  ∀ n, P8703867167865840285.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P16198830679233736964

`A020639(A020985(n)²*A273284(n+2))`
-/

namespace A273282.P16198830679233736964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020985 n ^ 2 * A273284 (n + 2)).toNat

end

end A273282.P16198830679233736964

namespace A273282

/-- `A020639(A020985(n)²*A273284(n+2))` -/
def P16198830679233736964.Spec : Prop :=
  ∀ n, P16198830679233736964.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P2323864562372123281

`A020639(A273284(n+2)/A020985(n)²)`
-/

namespace A273282.P2323864562372123281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A273284 (n + 2) : ℚ) / (A020985 n ^ 2 : ℚ))).toNat

end

end A273282.P2323864562372123281

namespace A273282

/-- `A020639(A273284(n+2)/A020985(n)²)` -/
def P2323864562372123281.Spec : Prop :=
  ∀ n, P2323864562372123281.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P6826057957407574838

`A273283(2*A273284(n+2)-A273284(n+2))`
-/

namespace A273282.P6826057957407574838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (2 * A273284 (n + 2) - A273284 (n + 2)).toNat

end

end A273282.P6826057957407574838

namespace A273282

/-- `A273283(2*A273284(n+2)-A273284(n+2))` -/
def P6826057957407574838.Spec : Prop :=
  ∀ n, P6826057957407574838.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P3281141238680596455

`A020639(A001221(A246655(n+1))*A273284(n+2))`
-/

namespace A273282.P3281141238680596455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001221 (A246655 (n + 1)).toNat * A273284 (n + 2)).toNat

end

end A273282.P3281141238680596455

namespace A273282

/-- `A020639(A001221(A246655(n+1))*A273284(n+2))` -/
def P3281141238680596455.Spec : Prop :=
  ∀ n, P3281141238680596455.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P5970045351576228109

`A276632(2*A273284(n+2)-A273284(n+2))`
-/

namespace A273282.P5970045351576228109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276632 (2 * A273284 (n + 2) - A273284 (n + 2)).toNat

end

end A273282.P5970045351576228109

namespace A273282

/-- `A276632(2*A273284(n+2)-A273284(n+2))` -/
def P5970045351576228109.Spec : Prop :=
  ∀ n, P5970045351576228109.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P643685662224110021

`A273288(A273284(A097621(A246655(n+1))))`
-/

namespace A273282.P643685662224110021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (A273284 (A097621 (A246655 (n + 1)).toNat).toNat).toNat

end

end A273282.P643685662224110021

namespace A273282

/-- `A273288(A273284(A097621(A246655(n+1))))` -/
def P643685662224110021.Spec : Prop :=
  ∀ n, P643685662224110021.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P16630415769981051806

`A273288(A273284(A097621(A000961(n+2))))`
-/

namespace A273282.P16630415769981051806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (A273284 (A097621 (A000961 (n + 2)).toNat).toNat).toNat

end

end A273282.P16630415769981051806

namespace A273282

/-- `A273288(A273284(A097621(A000961(n+2))))` -/
def P16630415769981051806.Spec : Prop :=
  ∀ n, P16630415769981051806.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P17152692537414903720

`A020639(A273284(n+2)²)`
-/

namespace A273282.P17152692537414903720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A273284 (n + 2) ^ 2).toNat

end

end A273282.P17152692537414903720

namespace A273282

/-- `A020639(A273284(n+2)²)` -/
def P17152692537414903720.Spec : Prop :=
  ∀ n, P17152692537414903720.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P1832573653228915860

`A020639(A000040(n+1)*A273284(n+2))`
-/

namespace A273282.P1832573653228915860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) * A273284 (n + 2)).toNat

end

end A273282.P1832573653228915860

namespace A273282

/-- `A020639(A000040(n+1)*A273284(n+2))` -/
def P1832573653228915860.Spec : Prop :=
  ∀ n, P1832573653228915860.a n = A273282 (n + 2)

end A273282

/-! ## A273282.P17179615387608495141

`A020639(A007821(n+1)*A273284(n+2))`
-/

namespace A273282.P17179615387608495141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007821 (n + 1) * A273284 (n + 2)).toNat

end

end A273282.P17179615387608495141

namespace A273282

/-- `A020639(A007821(n+1)*A273284(n+2))` -/
def P17179615387608495141.Spec : Prop :=
  ∀ n, P17179615387608495141.a n = A273282 (n + 2)

end A273282

/-!
# A273283: Least prime not less than the geometric mean of all prime divisors of n counted with multiplicity.

The programs for A273283, the canonical program `A273283.P12673250565840435264` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273283 has offset 2).

The definition of A273283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, A079870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273283.P12673250565840435264

`A007918(A079870(n+2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A273283

/-- `A007918(A079870(n+2))` -/
def P12673250565840435264.Spec : Prop :=
  ∀ n, P12673250565840435264.a n = A273283 (n + 2)

theorem P12673250565840435264.correct : P12673250565840435264.Spec := by
  intro n
  simp only [A273283, Nat.add_sub_cancel]

end A273283

/-! ## A273283.P8060882365095637297

`∑{p}[A273285(n+2), #]`
-/

namespace A273283.P8060882365095637297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273285 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A273283.P8060882365095637297

namespace A273283

/-- `∑{p}[A273285(n+2), #]` -/
def P8060882365095637297.Spec : Prop :=
  ∀ n, (P8060882365095637297.a n : ℤ) = A273283 (n + 2)

end A273283

/-! ## A273283.P3245853210538258134

`∏{p}[A273285(n+2), A006530(#)]`
-/

namespace A273283.P3245853210538258134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A273283.P3245853210538258134

namespace A273283

/-- `∏{p}[A273285(n+2), A006530(#)]` -/
def P3245853210538258134.Spec : Prop :=
  ∀ n, P3245853210538258134.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P18297710907865617490

`∏{p}[A273285(n+2), A020639(#)]`
-/

namespace A273283.P18297710907865617490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A273283.P18297710907865617490

namespace A273283

/-- `∏{p}[A273285(n+2), A020639(#)]` -/
def P18297710907865617490.Spec : Prop :=
  ∀ n, P18297710907865617490.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P5216985544509419225

`A273285(∏{p}[A273285(n+2), #])`
-/

namespace A273283.P5216985544509419225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273285 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A273283.P5216985544509419225

namespace A273283

/-- `A273285(∏{p}[A273285(n+2), #])` -/
def P5216985544509419225.Spec : Prop :=
  ∀ n, P5216985544509419225.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P12934304665631941017

`A006530(A273285(n+2))`
-/

namespace A273283.P12934304665631941017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273285 (n + 2)).toNat

end

end A273283.P12934304665631941017

namespace A273283

/-- `A006530(A273285(n+2))` -/
def P12934304665631941017.Spec : Prop :=
  ∀ n, P12934304665631941017.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P2915603508226338689

`A007947(A273285(gcd(n, n+1)+n+1))`
-/

namespace A273283.P2915603508226338689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A273285 (Nat.gcd n (n + 1) + (n + 1))).toNat

end

end A273283.P2915603508226338689

namespace A273283

/-- `A007947(A273285(gcd(n, n+1)+n+1))` -/
def P2915603508226338689.Spec : Prop :=
  ∀ n, P2915603508226338689.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P14863409233363094254

`A020639(∑{d}[A273285(n+2), A000010(#)])`
-/

namespace A273283.P14863409233363094254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A273283.P14863409233363094254

namespace A273283

/-- `A020639(∑{d}[A273285(n+2), A000010(#)])` -/
def P14863409233363094254.Spec : Prop :=
  ∀ n, P14863409233363094254.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P5343196299001661408

`A007947(2*A273285(n+2)-A273285(n+2))`
-/

namespace A273283.P5343196299001661408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * A273285 (n + 2) - A273285 (n + 2)).toNat

end

end A273283.P5343196299001661408

namespace A273283

/-- `A007947(2*A273285(n+2)-A273285(n+2))` -/
def P5343196299001661408.Spec : Prop :=
  ∀ n, P5343196299001661408.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P17848442024466965850

`A020639(A001221(A246655(n+1))*A273285(n+2))`
-/

namespace A273283.P17848442024466965850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001221 (A246655 (n + 1)).toNat * A273285 (n + 2)).toNat

end

end A273283.P17848442024466965850

namespace A273283

/-- `A020639(A001221(A246655(n+1))*A273285(n+2))` -/
def P17848442024466965850.Spec : Prop :=
  ∀ n, P17848442024466965850.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P1282805336417082036

`A273282(2*A273285(n+2)-A273285(n+2))`
-/

namespace A273283.P1282805336417082036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (2 * A273285 (n + 2) - A273285 (n + 2)).toNat

end

end A273283.P1282805336417082036

namespace A273283

/-- `A273282(2*A273285(n+2)-A273285(n+2))` -/
def P1282805336417082036.Spec : Prop :=
  ∀ n, P1282805336417082036.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P3332068935299990656

`A273288(A273285(n+2)/∑{e}[A273288(n+2), #])`
-/

namespace A273283.P3332068935299990656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (SequenceMachineLib.roundAway ((A273285 (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ))).toNat

end

end A273283.P3332068935299990656

namespace A273283

/-- `A273288(A273285(n+2)/∑{e}[A273288(n+2), #])` -/
def P3332068935299990656.Spec : Prop :=
  ∀ n, P3332068935299990656.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P6458376592920928948

`A273289(A273285(n+2)/∑{e}[A273289(n+2), #])`
-/

namespace A273283.P6458376592920928948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (SequenceMachineLib.roundAway ((A273285 (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ))).toNat

end

end A273283.P6458376592920928948

namespace A273283

/-- `A273289(A273285(n+2)/∑{e}[A273289(n+2), #])` -/
def P6458376592920928948.Spec : Prop :=
  ∀ n, P6458376592920928948.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P3693651285025341449

`A273289(A273285(A097621(A246655(n+1))))`
-/

namespace A273283.P3693651285025341449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (A273285 (A097621 (A246655 (n + 1)).toNat).toNat).toNat

end

end A273283.P3693651285025341449

namespace A273283

/-- `A273289(A273285(A097621(A246655(n+1))))` -/
def P3693651285025341449.Spec : Prop :=
  ∀ n, P3693651285025341449.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P7574119683231211871

`A273289(A273285(A097621(A000961(n+2))))`
-/

namespace A273283.P7574119683231211871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (A273285 (A097621 (A000961 (n + 2)).toNat).toNat).toNat

end

end A273283.P7574119683231211871

namespace A273283

/-- `A273289(A273285(A097621(A000961(n+2))))` -/
def P7574119683231211871.Spec : Prop :=
  ∀ n, P7574119683231211871.a n = A273283 (n + 2)

end A273283

/-! ## A273283.P4743023423395568480

`A273289(A273285(A025528(A246655(n+2))))`
-/

namespace A273283.P4743023423395568480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (A273285 (A025528 (A246655 (n + 2)).toNat).toNat).toNat

end

end A273283.P4743023423395568480

namespace A273283

/-- `A273289(A273285(A025528(A246655(n+2))))` -/
def P4743023423395568480.Spec : Prop :=
  ∀ n, P4743023423395568480.a n = A273283 (n + 2)

end A273283

/-!
# A273284: A273282(n)^Omega(n), where Omega = A001222.

The programs for A273284, the canonical program `A273284.P284414914406983826` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273284 has offset 2).

The definition of A273284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A273282, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273284.P284414914406983826

`A273282(n+2)^A001222(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A273284

/-- `A273282(n+2)^A001222(n+2)` -/
def P284414914406983826.Spec : Prop :=
  ∀ n, P284414914406983826.a n = (A273284 (n + 2) : ℚ)

end A273284

/-! ## A273284.P15696436561735920833

`A273282(n+2)^A086436(n+2)`
-/

namespace A273284.P15696436561735920833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273282 (n + 2) : ℚ) ^ (A086436 (n + 2) : ℤ)

end

end A273284.P15696436561735920833

namespace A273284

/-- `A273282(n+2)^A086436(n+2)` -/
def P15696436561735920833.Spec : Prop :=
  ∀ n, P15696436561735920833.a n = (A273284 (n + 2) : ℚ)

end A273284

/-! ## A273284.P11934242995228568804

`A273282(n+2)^val(A273285(n+2), A273283(n+2))`
-/

namespace A273284.P11934242995228568804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (n + 2) ^ SequenceMachineLib.valuation (A273285 (n + 2)).toNat (A273283 (n + 2)).toNat

end

end A273284.P11934242995228568804

namespace A273284

/-- `A273282(n+2)^val(A273285(n+2), A273283(n+2))` -/
def P11934242995228568804.Spec : Prop :=
  ∀ n, P11934242995228568804.a n = A273284 (n + 2)

end A273284

/-! ## A273284.P9016313554578066012

`A273282(n+2)^val(A273291(n+2), A273289(n+2))`
-/

namespace A273284.P9016313554578066012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (n + 2) ^ SequenceMachineLib.valuation (A273291 (n + 2)).toNat (A273289 (n + 2)).toNat

end

end A273284.P9016313554578066012

namespace A273284

/-- `A273282(n+2)^val(A273291(n+2), A273289(n+2))` -/
def P9016313554578066012.Spec : Prop :=
  ∀ n, P9016313554578066012.a n = A273284 (n + 2)

end A273284

/-!
# A273285: A273283(n)^Omega(n), where Omega = A001222.

The programs for A273285, the canonical program `A273285.P17943981346592815695` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273285 has offset 2).

The definition of A273285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A273283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273285.P17943981346592815695

`A273283(n+2)^A001222(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A273285

/-- `A273283(n+2)^A001222(n+2)` -/
def P17943981346592815695.Spec : Prop :=
  ∀ n, P17943981346592815695.a n = (A273285 (n + 2) : ℚ)

end A273285

/-! ## A273285.P7126042219873300240

`A273283(n+2)^val(A273284(n+2), A273282(n+2))`
-/

namespace A273285.P7126042219873300240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (n + 2) ^ SequenceMachineLib.valuation (A273284 (n + 2)).toNat (A273282 (n + 2)).toNat

end

end A273285.P7126042219873300240

namespace A273285

/-- `A273283(n+2)^val(A273284(n+2), A273282(n+2))` -/
def P7126042219873300240.Spec : Prop :=
  ∀ n, P7126042219873300240.a n = A273285 (n + 2)

end A273285

/-! ## A273285.P3449985258140435083

`A273283(n+2)^val(A273291(n+2), A273289(n+2))`
-/

namespace A273285.P3449985258140435083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (n + 2) ^ SequenceMachineLib.valuation (A273291 (n + 2)).toNat (A273289 (n + 2)).toNat

end

end A273285.P3449985258140435083

namespace A273285

/-- `A273283(n+2)^val(A273291(n+2), A273289(n+2))` -/
def P3449985258140435083.Spec : Prop :=
  ∀ n, P3449985258140435083.a n = A273285 (n + 2)

end A273285

/-!
# A273288: Largest prime not exceeding the median of all prime divisors of n counted with multiplicity.

The programs for A273288, there is no canonical definition to state claims against.
-/

/-! ## A273288.P15230397475523920550

`∑{p}[A273290(n+2), #]`
-/

namespace A273288.P15230397475523920550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273290 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A273288.P15230397475523920550

/-! ## A273288.P5311207982641771055

`A006530(A273290(n+2))`
-/

namespace A273288.P5311207982641771055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273290 (n + 2)).toNat

end

end A273288.P5311207982641771055

/-! ## A273288.P9054773712708732063

`A020639(A273290(2*(n+1)-n))`
-/

namespace A273288.P9054773712708732063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A273290 (2 * (n + 1) - n)).toNat

end

end A273288.P9054773712708732063

/-! ## A273288.P18219822816171882187

`A020639(A273290(n+2)%A005893(n+1))`
-/

namespace A273288.P18219822816171882187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A273290 (n + 2)) (A005893 (n + 1))).toNat

end

end A273288.P18219822816171882187

/-! ## A273288.P1799618579834857999

`A273282(A273290(n+2)%A027688(n))`
-/

namespace A273288.P1799618579834857999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (Int.tmod (A273290 (n + 2)) (A027688 n)).toNat

end

end A273288.P1799618579834857999

/-! ## A273288.P14304825258714721533

`A273282(A273290(n+2))%A273312(n)`
-/

namespace A273288.P14304825258714721533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273282 (A273290 (n + 2)).toNat) (A273312 n)

end

end A273288.P14304825258714721533

/-! ## A273288.P2892339217351083470

`A079866(2*A273290(n+2)-A273290(n+2))`
-/

namespace A273288.P2892339217351083470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (2 * A273290 (n + 2) - A273290 (n + 2)).toNat

end

end A273288.P2892339217351083470

/-! ## A273288.P5336756259943186168

`A273282(2*A273290(n+2)-A273290(n+2))`
-/

namespace A273288.P5336756259943186168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (2 * A273290 (n + 2) - A273290 (n + 2)).toNat

end

end A273288.P5336756259943186168

/-! ## A273288.P10810242484279557839

`A273283(2*A273290(n+2)-A273290(n+2))`
-/

namespace A273288.P10810242484279557839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (2 * A273290 (n + 2) - A273290 (n + 2)).toNat

end

end A273288.P10810242484279557839

/-! ## A273288.P10727462727048789009

`A273282(∑{e}[A273282(n+2), #*A273290(n+2)])`
-/

namespace A273288.P10727462727048789009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A273290 (n + 2)).toNat

end

end A273288.P10727462727048789009

/-! ## A273288.P734637866556744330

`A273283(∑{e}[A273283(n+2), #*A273290(n+2)])`
-/

namespace A273288.P734637866556744330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A273290 (n + 2)).toNat

end

end A273288.P734637866556744330

/-! ## A273288.P17492996580842628437

`A273282(∑{e}[A273282(n+2), A273290(n+2)/#])`
-/

namespace A273288.P17492996580842628437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A273290 (n + 2) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A273288.P17492996580842628437

/-! ## A273288.P1780309616593169237

`A273283(∑{e}[A273283(n+2), A273290(n+2)/#])`
-/

namespace A273288.P1780309616593169237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A273290 (n + 2) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A273288.P1780309616593169237

/-! ## A273288.P2963123003387149393

`A273289(∑{e}[A273289(n+2), A273290(n+2)/#])`
-/

namespace A273288.P2963123003387149393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A273290 (n + 2) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A273288.P2963123003387149393

/-! ## A273288.P5296402175113419269

`A273289(A273290(A097621(A246655(n+1))))`
-/

namespace A273288.P5296402175113419269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (A273290 (A097621 (A246655 (n + 1)).toNat).toNat).toNat

end

end A273288.P5296402175113419269

/-! ## A273288.P15206265698461761122

`A273289(A273290(A097621(A000961(n+2))))`
-/

namespace A273288.P15206265698461761122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (A273290 (A097621 (A000961 (n + 2)).toNat).toNat).toNat

end

end A273288.P15206265698461761122

/-! ## A273288.P3044046708923102165

`A273289(A273290(A025528(A246655(n+2))))`
-/

namespace A273288.P3044046708923102165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (A273290 (A025528 (A246655 (n + 2)).toNat).toNat).toNat

end

end A273288.P3044046708923102165

/-!
# A273289: Least prime not less than the median of all prime divisors of n counted with multiplicity.

The programs for A273289, there is no canonical definition to state claims against.
-/

/-! ## A273289.P12528314222113045214

`∑{p}[A273291(n+2), #]`
-/

namespace A273289.P12528314222113045214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273291 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A273289.P12528314222113045214

/-! ## A273289.P17070996164630867086

`A273291(∏{p}[A273291(n+2), #])`
-/

namespace A273289.P17070996164630867086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273291 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A273289.P17070996164630867086

/-! ## A273289.P240517172897776854

`A006530(A273291(n+2))`
-/

namespace A273289.P240517172897776854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273291 (n + 2)).toNat

end

end A273289.P240517172897776854

/-! ## A273289.P761271127172120389

`A020639(∑{d}[A273291(n+2), A000010(#)])`
-/

namespace A273289.P761271127172120389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A273289.P761271127172120389

/-! ## A273289.P17007562408442966797

`A020639(A001221(A246655(n+1))*A273291(n+2))`
-/

namespace A273289.P17007562408442966797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001221 (A246655 (n + 1)).toNat * A273291 (n + 2)).toNat

end

end A273289.P17007562408442966797

/-! ## A273289.P9564590169618983379

`A273282(∑{d}[A273291(n+2), A000010(#)])`
-/

namespace A273289.P9564590169618983379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A273289.P9564590169618983379

/-! ## A273289.P17753030313023452574

`A273282(2*A273291(n+2)-A273291(n+2))`
-/

namespace A273289.P17753030313023452574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273282 (2 * A273291 (n + 2) - A273291 (n + 2)).toNat

end

end A273289.P17753030313023452574

/-! ## A273289.P5561143437759804915

`A273283(2*A273291(n+2)-A273291(n+2))`
-/

namespace A273289.P5561143437759804915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (2 * A273291 (n + 2) - A273291 (n + 2)).toNat

end

end A273289.P5561143437759804915

/-! ## A273289.P10869875950109739982

`A273283(∑{e}[A273283(n+2), #*A273291(n+2)])`
-/

namespace A273289.P10869875950109739982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A273291 (n + 2)).toNat

end

end A273289.P10869875950109739982

/-! ## A273289.P10503997657635621156

`A273283(∑{e}[A273283(n+2), A273291(n+2)/#])`
-/

namespace A273289.P10503997657635621156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273283 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A273291 (n + 2) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A273289.P10503997657635621156

/-! ## A273289.P17606021784576037864

`A273288(∑{e}[A273288(n+2), A273291(n+2)/#])`
-/

namespace A273289.P17606021784576037864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A273291 (n + 2) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A273289.P17606021784576037864

/-! ## A273289.P12445401106458218640

`A273288(A273291(A097621(A246655(n+1))))`
-/

namespace A273289.P12445401106458218640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (A273291 (A097621 (A246655 (n + 1)).toNat).toNat).toNat

end

end A273289.P12445401106458218640

/-! ## A273289.P2528122442458502629

`A273288(A273291(A097621(A000961(n+2))))`
-/

namespace A273289.P2528122442458502629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (A273291 (A097621 (A000961 (n + 2)).toNat).toNat).toNat

end

end A273289.P2528122442458502629

/-! ## A273289.P12323971310085137965

`A273288(A273291(A025528(A246655(n+2))))`
-/

namespace A273289.P12323971310085137965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (A273291 (A025528 (A246655 (n + 2)).toNat).toNat).toNat

end

end A273289.P12323971310085137965

/-!
# A273290: A273288(n)^Omega(n), where Omega = A001222.

The programs for A273290, there is no canonical definition to state claims against.
-/

/-! ## A273290.P9289340875420607809

`A273288(n+2)^A001222(n+2)`
-/

namespace A273290.P9289340875420607809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273288 (n + 2) : ℚ) ^ (A001222 (n + 2) : ℤ)

end

end A273290.P9289340875420607809

/-! ## A273290.P891035215883740119

`A273288(n+2)^val(A273285(n+2), A273283(n+2))`
-/

namespace A273290.P891035215883740119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (n + 2) ^ SequenceMachineLib.valuation (A273285 (n + 2)).toNat (A273283 (n + 2)).toNat

end

end A273290.P891035215883740119

/-! ## A273290.P4140191295889466331

`A273288(n+2)^val(A273291(n+2), A273289(n+2))`
-/

namespace A273290.P4140191295889466331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (n + 2) ^ SequenceMachineLib.valuation (A273291 (n + 2)).toNat (A273289 (n + 2)).toNat

end

end A273290.P4140191295889466331

/-!
# A273291: A273289(n)^Omega(n), where Omega = A001222.

The programs for A273291, there is no canonical definition to state claims against.
-/

/-! ## A273291.P371107478421216900

`A273289(n+2)^A001222(n+2)`
-/

namespace A273291.P371107478421216900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273289 (n + 2) : ℚ) ^ (A001222 (n + 2) : ℤ)

end

end A273291.P371107478421216900

/-! ## A273291.P15801826929969908232

`A273289(n+2)^A051904(A061142(n+2))`
-/

namespace A273291.P15801826929969908232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273289 (n + 2) : ℚ) ^ (A051904 (A061142 (n + 2)).toNat : ℤ)

end

end A273291.P15801826929969908232

/-! ## A273291.P13499864420177213791

`A273289(n+2)^val(A273284(n+2), A273282(n+2))`
-/

namespace A273291.P13499864420177213791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (n + 2) ^ SequenceMachineLib.valuation (A273284 (n + 2)).toNat (A273282 (n + 2)).toNat

end

end A273291.P13499864420177213791

/-! ## A273291.P16889644358025466424

`A273289(n+2)^val(A273285(n+2), A273283(n+2))`
-/

namespace A273291.P16889644358025466424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (n + 2) ^ SequenceMachineLib.valuation (A273285 (n + 2)).toNat (A273283 (n + 2)).toNat

end

end A273291.P16889644358025466424

/-!
# A273293: Numbers k such that k and k^2 are the sums of two nonzero squares in exactly two ways.

The programs for A273293, there is no canonical definition to state claims against.
-/

/-! ## A273293.P1532908447385264564

`2*A084645(n+1)²`
-/

namespace A273293.P1532908447385264564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084645 (n + 1) ^ 2

end

end A273293.P1532908447385264564

/-! ## A273293.P95240250084219535

`2*A209922(n+1)²`
-/

namespace A273293.P95240250084219535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209922 (n + 1) ^ 2

end

end A273293.P95240250084219535

/-! ## A273293.P4135189444601966459

`2*eq[2, A063014(n)]²`
-/

namespace A273293.P4135189444601966459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A273293.P4135189444601966459

/-! ## A273293.P12007798246092729200

`2*eq[12, A046109(n)]²`
-/

namespace A273293.P12007798246092729200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A273293.P12007798246092729200

/-! ## A273293.P9540175802116837582

`2*∩[A025284(n+1), n²]`
-/

namespace A273293.P9540175802116837582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A273293.P9540175802116837582

/-!
# A273295: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A273295, there is no canonical definition to state claims against.
-/

/-! ## A273295.P11189013377691875485

`A273298(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273295.P11189013377691875485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273298 (n - 1) + a (n - 1)

end

end A273295.P11189013377691875485

/-! ## A273295.P7141484780046511267

`Δ[A273297(n)]-A273298(n)`
-/

namespace A273295.P7141484780046511267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273298 n

end

end A273295.P7141484780046511267

/-! ## A273295.P9798945889911866742

`A273297(n+1)-(A273298(n)+A273297(n))`
-/

namespace A273295.P9798945889911866742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273297 (n + 1) - (A273298 n + A273297 n)

end

end A273295.P9798945889911866742

/-! ## A273295.P7650469529023341895

`A273297(A000027(n+1))%(A273298(n)+A273297(n))`
-/

namespace A273295.P7650469529023341895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273297 (A000027 (n + 1)).toNat) (A273298 n + A273297 n)

end

end A273295.P7650469529023341895

/-! ## A273295.P9739126026766137368

`or(A180649(A001590(n)), A273241(n))`
-/

namespace A273295.P9739126026766137368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180649 (A001590 n).toNat) (A273241 n)

end

end A273295.P9739126026766137368

/-!
# A273296: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A273296, there is no canonical definition to state claims against.
-/

/-! ## A273296.P1486357428014285746

`A273295(2^n-1)`
-/

namespace A273296.P1486357428014285746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 (2 ^ n - 1)

end

end A273296.P1486357428014285746

/-! ## A273296.P5022645180732367166

`record[A273295(A173787(n))]`
-/

namespace A273296.P5022645180732367166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273296.P5022645180732367166

/-! ## A273296.P1901530402681927864

`record[A273295(A218616(n))]`
-/

namespace A273296.P1901530402681927864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273296.P1901530402681927864

/-! ## A273296.P8198881659174847684

`record[A273295(A232751(n))]`
-/

namespace A273296.P8198881659174847684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273296.P8198881659174847684

/-! ## A273296.P725996966398208821

`record[A273295(A255067(n))]`
-/

namespace A273296.P725996966398208821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273296.P725996966398208821

/-!
# A273297: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A273297, there is no canonical definition to state claims against.
-/

/-! ## A273297.P14452453476437251000

`∑[∑[A273298(n)]+1-A273298(n)]`
-/

namespace A273297.P14452453476437251000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273298 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273297.P14452453476437251000

/-! ## A273297.P1076701940638562416

`∑[A273295(n)]`
-/

namespace A273297.P1076701940638562416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273297.P1076701940638562416

/-! ## A273297.P15559627329077381957

`A273295(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273297.P15559627329077381957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273295 n + a (A023443 n).toNat

end

end A273297.P15559627329077381957

/-! ## A273297.P319775204596592494

`a(n-1)+A273295(n)+A000007(n)` with `a(0)=1`
-/

namespace A273297.P319775204596592494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273295 n + A000007 n)

end

end A273297.P319775204596592494

/-! ## A273297.P2507490189643230907

`A273295(n)+a(A000038(n)-1+n)` with `a(0)=1`
-/

namespace A273297.P2507490189643230907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273295 n + a (A000038 n - 1 + (n : ℤ)).toNat

end

end A273297.P2507490189643230907

/-! ## A273297.P9962301653751122322

`A273295(n)+a(n-A001222(A078132(n+1)))` with `a(0)=1`
-/

namespace A273297.P9962301653751122322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273295 n + a ((n : ℤ) - A001222 (A078132 (n + 1)).toNat).toNat

end

end A273297.P9962301653751122322

/-!
# A273298: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A273298, there is no canonical definition to state claims against.
-/

/-! ## A273298.P10675587420892928329

`Δ[A273295(n)]`
-/

namespace A273298.P10675587420892928329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273298.P10675587420892928329

/-! ## A273298.P6403341693419790983

`A273295(n+1)-A273295(n)`
-/

namespace A273298.P6403341693419790983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273295 (n + 1) - A273295 n

end

end A273298.P6403341693419790983

/-! ## A273298.P16928211440473779421

`xor(A025442(A020055(n)), A273244(n))`
-/

namespace A273298.P16928211440473779421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025442 (A020055 n).toNat) (A273244 n)

end

end A273298.P16928211440473779421

/-! ## A273298.P11764550079911127422

`xor(A178261(A208130(n+1)), A273244(n))`
-/

namespace A273298.P11764550079911127422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178261 (A208130 (n + 1)).toNat) (A273244 n)

end

end A273298.P11764550079911127422

/-!
# A273299: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A273299, there is no canonical definition to state claims against.
-/

/-! ## A273299.P247237131607272489

`A273303(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273299.P247237131607272489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273303 (n - 1) + a (n - 1)

end

end A273299.P247237131607272489

/-! ## A273299.P13493105482513963804

`∑[∏{e}[A008578(n+1), A273303(n-#)]]`
-/

namespace A273299.P13493105482513963804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A273303 (n - Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273299.P13493105482513963804

/-! ## A273299.P18188318737121193187

`∑[∏{e}[A020639(n+1), A273303(n-#)]]`
-/

namespace A273299.P18188318737121193187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A273303 (n - Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273299.P18188318737121193187

/-! ## A273299.P3408465955216607815

`∑[∏{e}[A136548(n+2), A273303(n-#)]]`
-/

namespace A273299.P3408465955216607815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A273303 (n - Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273299.P3408465955216607815

/-! ## A273299.P12590079576099737572

`A016754(n)-A271598(n)%A016754(n)`
-/

namespace A273299.P12590079576099737572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A271598 n) (A016754 n)

end

end A273299.P12590079576099737572

/-! ## A273299.P11939728763765419870

`A181385(A016825(n))-A271598(n)`
-/

namespace A273299.P11939728763765419870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271598 n

end

end A273299.P11939728763765419870

/-! ## A273299.P5407735257678385760

`A008740(A008458(n))-A271598(n)`
-/

namespace A273299.P5407735257678385760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A271598 n

end

end A273299.P5407735257678385760

/-! ## A273299.P10109278410431827934

`Δ[A273301(n)]-A273303(n)`
-/

namespace A273299.P10109278410431827934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273303 n

end

end A273299.P10109278410431827934

/-! ## A273299.P78166617829800230

`A273301(n+1)-(A273303(n)+A273301(n))`
-/

namespace A273299.P78166617829800230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273301 (n + 1) - (A273303 n + A273301 n)

end

end A273299.P78166617829800230

/-! ## A273299.P9536375579684636736

`A098181(∑[A273303(n)]-A273303(n))`
-/

namespace A273299.P9536375579684636736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (∑ j ∈ Finset.range (n + 1), f1 j - A273303 n).toNat

end

end A273299.P9536375579684636736

