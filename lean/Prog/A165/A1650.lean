import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024

/-!
# A165000: Consider the base-3 Kaprekar map n->K(n) defined in A164993. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165000, there is no canonical definition to state claims against.
-/

/-! ## A165000.P13761378649210349736

`A164998(A144146(n+2))%A262487(n+1)`
-/

namespace A165000.P13761378649210349736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164998 (A144146 (n + 2)).toNat) (A262487 (n + 1))

end

end A165000.P13761378649210349736

/-! ## A165000.P6325940733305275748

`filter[A164998(n+1), A011736(#)]`
-/

namespace A165000.P6325940733305275748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011736 (f1 j).toNat = 1) n)

end

end A165000.P6325940733305275748

/-!
# A165001: Length of cycle mentioned in A165000.

The programs for A165001, there is no canonical definition to state claims against.
-/

/-! ## A165001.P6491306096697273008

`A164999(lt[1, A164999(n+1)]+1)`
-/

namespace A165001.P6491306096697273008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165001.P6491306096697273008

/-!
# A165002: Consider the base-3 Kaprekar map n->K(n) defined in A164993. Sequence gives least elements of each cycle, including fixed points.

The programs for A165002, there is no canonical definition to state claims against.
-/

/-! ## A165002.P5278811999946550415

`A165010(A195098(n+1)%A065106(n+1))`
-/

namespace A165002.P5278811999946550415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165010 (Int.tmod (A195098 (n + 1)) (A065106 (n + 1))).toNat

end

end A165002.P5278811999946550415

/-! ## A165002.P16170582891354315964

`A165010(C(A025487(n+1), 64)+n+1)`
-/

namespace A165002.P16170582891354315964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165010 (Nat.choose (A025487 (n + 1)).toNat 64 + (n + 1))

end

end A165002.P16170582891354315964

/-! ## A165002.P14319813140132165652

`A165010(or(A077168(n), A194698(n+1)))`
-/

namespace A165002.P14319813140132165652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165010 (Int.lor (A077168 n) (A194698 (n + 1))).toNat

end

end A165002.P14319813140132165652

/-! ## A165002.P6192760364321543065

`A165010(A043717(n+1))%A091411(2*(n+2))`
-/

namespace A165002.P6192760364321543065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165010 (A043717 (n + 1)).toNat) (A091411 (2 * (n + 2)))

end

end A165002.P6192760364321543065

/-! ## A165002.P4974824315465322538

`A103754(A098056(n))*A165010(A195098(n+1))`
-/

namespace A165002.P4974824315465322538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103754 (A098056 n).toNat * A165010 (A195098 (n + 1)).toNat

end

end A165002.P4974824315465322538

/-!
# A165003: Length of cycle mentioned in A165002.

The programs for A165003, there is no canonical definition to state claims against.
-/

/-! ## A165003.P2104519843325454013

`A165011(A195098(n+1))%p?[A053602(n)]`
-/

namespace A165003.P2104519843325454013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165011 (A195098 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A165003.P2104519843325454013

/-! ## A165003.P13585352677155889457

`gcd(A165011(A195098(n+1)), A218418(n+1))`
-/

namespace A165003.P13585352677155889457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165011 (A195098 (n + 1)).toNat) (A218418 (n + 1))

end

end A165003.P13585352677155889457

/-! ## A165003.P2470777907705936497

`A165011(A195098(n+1))^A001221(A000079(n))`
-/

namespace A165003.P2470777907705936497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165011 (A195098 (n + 1)).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A165003.P2470777907705936497

/-! ## A165003.P16859112607005480490

`A165011(A195098(n+1))^A001221(A016116(2*n))`
-/

namespace A165003.P16859112607005480490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165011 (A195098 (n + 1)).toNat : ℚ) ^ (A001221 (A016116 (2 * n)).toNat : ℤ)

end

end A165003.P16859112607005480490

/-! ## A165003.P1250136794295999979

`A336811(A004736(n+1)*A376934(n+1))`
-/

namespace A165003.P1250136794295999979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (A004736 (n + 1) * A376934 (n + 1)).toNat

end

end A165003.P1250136794295999979

/-!
# A165004: Consider the base-3 Kaprekar map n->K(n) defined in A164993. Sequence gives least elements of each cycle of length > 1.

The programs for A165004, there is no canonical definition to state claims against.
-/

/-! ## A165004.P1312716047753576386

`A165002(record[(n+1)%(A165003(n+2)+n)]+1)`
-/

namespace A165004.P1312716047753576386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A165003 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A165004.P1312716047753576386

/-! ## A165004.P4954418288454157864

`∩[A165000(n+1), A165002(n+1)]`
-/

namespace A165004.P4954418288454157864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165004.P4954418288454157864

/-!
# A165005: Length of cycle mentioned in A165004.

The programs for A165005, there is no canonical definition to state claims against.
-/

/-! ## A165005.P3872667934265624961

`A165003(lt[1, A165003(n+1)]+1)`
-/

namespace A165005.P3872667934265624961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165005.P3872667934265624961

/-! ## A165005.P5117337740933082557

`A165003(record[(n+1)%(A165003(n+2)+n)]+1)`
-/

namespace A165005.P5117337740933082557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A165003 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A165005.P5117337740933082557

/-! ## A165005.P5731961226438209865

`A000720(p?[A160656(A165003(n+1))])`
-/

namespace A165005.P5731961226438209865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (A165003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165005.P5731961226438209865

/-! ## A165005.P14083284127052396314

`A165001(A358724(n+2)+A008062(n+1))`
-/

namespace A165005.P14083284127052396314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165001 (A358724 (n + 2) + A008062 (n + 1)).toNat

end

end A165005.P14083284127052396314

/-! ## A165005.P8139679085708475118

`A165001(xor(A008062(n+1), A349797(3*(n+1))))`
-/

namespace A165005.P8139679085708475118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165001 (Int.xor (A008062 (n + 1)) (A349797 (3 * (n + 1)))).toNat

end

end A165005.P8139679085708475118

/-!
# A165006: Number of cycles of n-digit numbers (including fixed points) under the base-3 Kaprekar map A164993.

The programs for A165006, there is no canonical definition to state claims against.
-/

/-! ## A165006.P6580091195407290050

`A189357(n)-A133819(2^n+2)%2`
-/

namespace A165006.P6580091195407290050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189357 n - Int.tmod (A133819 (2 ^ n + 2)) 2

end

end A165006.P6580091195407290050

/-! ## A165006.P6738422131148968231

`A099564(A342556(n))`
-/

namespace A165006.P6738422131148968231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099564 (A342556 n).toNat

end

end A165006.P6738422131148968231

/-! ## A165006.P1145095019313473042

`A099563(A287776(n+1)-char[2^n])`
-/

namespace A165006.P1145095019313473042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A287776 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A165006.P1145095019313473042

/-! ## A165006.P6742330093899025303

`A001222(or(A054977(n), A275521(n)))`
-/

namespace A165006.P6742330093899025303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A054977 n) (A275521 n)).toNat

end

end A165006.P6742330093899025303

/-! ## A165006.P8052320727042845954

`A023416(or(A049610(n), A260298(n+1)))`
-/

namespace A165006.P8052320727042845954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor (A049610 n) (A260298 (n + 1))).toNat

end

end A165006.P8052320727042845954

/-!
# A165009: a(n) = smallest number that leads to a new cycle under the base-3 Kaprekar map of A164993.

The programs for A165009, there is no canonical definition to state claims against.
-/

/-! ## A165009.P7324535791749971824

`∑{p}[(2*n+1)!, C(3, #)^(n+2)]`
-/

namespace A165009.P7324535791749971824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 p ^ (n + 2)

end

end A165009.P7324535791749971824

/-!
# A165010: Smallest member of cycle corresponding to n-th term of A165009.

The programs for A165010, there is no canonical definition to state claims against.
-/

/-! ## A165010.P123774750504702079

`A165002(A195098(n+1)%A270929(2*(n+2)))`
-/

namespace A165010.P123774750504702079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (Int.tmod (A195098 (n + 1)) (A270929 (2 * (n + 2)))).toNat

end

end A165010.P123774750504702079

/-! ## A165010.P12471045403248720522

`A000265(A000079(n))*A165002(A195098(n+1))`
-/

namespace A165010.P12471045403248720522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000079 n).toNat * A165002 (A195098 (n + 1)).toNat

end

end A165010.P12471045403248720522

/-! ## A165010.P8219530063886244859

`A164886(A163205(n+1))*A165002(A195098(n+1))`
-/

namespace A165010.P8219530063886244859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A163205 (n + 1)).toNat * A165002 (A195098 (n + 1)).toNat

end

end A165010.P8219530063886244859

/-! ## A165010.P12924016243913063557

`A165002(A195098(n+1)%A008062(n+1))`
-/

namespace A165010.P12924016243913063557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (Int.tmod (A195098 (n + 1)) (A008062 (n + 1))).toNat

end

end A165010.P12924016243913063557

/-! ## A165010.P716778336445258046

`A165002(A195098(n+1))%A068233(n+1)`
-/

namespace A165010.P716778336445258046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165002 (A195098 (n + 1)).toNat) (A068233 (n + 1))

end

end A165010.P716778336445258046

/-!
# A165011: Length of cycle corresponding to n-th term of A165009.

The programs for A165011, there is no canonical definition to state claims against.
-/

/-! ## A165011.P17597724568459447178

`gcd(A165003(A195098(n+1)), A185284(2*n+1))`
-/

namespace A165011.P17597724568459447178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165003 (A195098 (n + 1)).toNat) (A185284 (2 * n + 1))

end

end A165011.P17597724568459447178

/-! ## A165011.P12413250918340327272

`A165003(A195098(n+1))%p?[A155902(n)]`
-/

namespace A165011.P12413250918340327272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165003 (A195098 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A165011.P12413250918340327272

/-! ## A165011.P8390349035991824010

`gcd(A165003(A195098(n+1)), A218418(n+1))`
-/

namespace A165011.P8390349035991824010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165003 (A195098 (n + 1)).toNat) (A218418 (n + 1))

end

end A165011.P8390349035991824010

/-! ## A165011.P1059088513362168393

`A165003(A195098(n+1)+A010893(3*n+2))`
-/

namespace A165011.P1059088513362168393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (A195098 (n + 1) + A010893 (3 * n + 2 + 13)).toNat

end

end A165011.P1059088513362168393

/-! ## A165011.P6980325205373126529

`A165003(lt[A344677(n), A319806(3*n)])`
-/

namespace A165011.P6980325205373126529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319806 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165011.P6980325205373126529

/-!
# A165012: a(n) = image of n under the base-4 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165012, there is no canonical definition to state claims against.
-/

/-! ## A165012.P3712640240558108577

`A055949(A319720(n))`
-/

namespace A165012.P3712640240558108577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 (A319720 n).toNat

end

end A165012.P3712640240558108577

/-! ## A165012.P1311381328246293070

`A319720(n)-A319652(n)`
-/

namespace A165012.P1311381328246293070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n - A319652 n

end

end A165012.P1311381328246293070

/-! ## A165012.P18286625875557641710

`A319804(n)-2*A319652(n)`
-/

namespace A165012.P18286625875557641710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n - 2 * A319652 n

end

end A165012.P18286625875557641710

/-! ## A165012.P16713710497672105949

`2*A319720(n)-A319804(n)`
-/

namespace A165012.P16713710497672105949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319720 n - A319804 n

end

end A165012.P16713710497672105949

/-! ## A165012.P7070443331694320204

`3*A165013(n)`
-/

namespace A165012.P7070443331694320204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165013 n

end

end A165012.P7070443331694320204

/-! ## A165012.P17385265584449740764

`A008585(A165013(n))`
-/

namespace A165012.P17385265584449740764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A165013 n).toNat

end

end A165012.P17385265584449740764

/-!
# A165013: a(n) = A165012(n)/3.

The programs for A165013, there is no canonical definition to state claims against.
-/

/-! ## A165013.P1899462641517109636

`A165012(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165013.P1899462641517109636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165012 n : ℚ) / 3

end

end A165013.P1899462641517109636

/-! ## A165013.P12928219582160341778

`A055949(A319720(n))/3`
-/

namespace A165013.P12928219582160341778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055949 (A319720 n).toNat : ℚ) / 3

end

end A165013.P12928219582160341778

/-! ## A165013.P6102902684118239188

`A002264(A165012(n))`
-/

namespace A165013.P6102902684118239188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A165012 n).toNat

end

end A165013.P6102902684118239188

/-! ## A165013.P7750141286650629659

`A008615(2*A165012(n))`
-/

namespace A165013.P7750141286650629659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A165012 n).toNat

end

end A165013.P7750141286650629659

/-! ## A165013.P3509166239333227824

`A008615(A165012(n)+A165012(n))`
-/

namespace A165013.P3509166239333227824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A165012 n + A165012 n).toNat

end

end A165013.P3509166239333227824

/-!
# A165014: Length of preperiodic part of trajectory of n under iteration of the base-4 Kaprekar map in A165012.

The programs for A165014, there is no canonical definition to state claims against.
-/

/-! ## A165014.P14180096341538575382

`p?[A242281(n+2)]%A165015(n)`
-/

namespace A165014.P14180096341538575382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A165015 n)

end

end A165014.P14180096341538575382

/-! ## A165014.P12014402469873911421

`A165015(n)-A001055(A130327(n))`
-/

namespace A165014.P12014402469873911421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165015 n - A001055 (A130327 n).toNat

end

end A165014.P12014402469873911421

/-! ## A165014.P11898178307433392136

`A165015(n)-A005171(A144459(n))`
-/

namespace A165014.P11898178307433392136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165015 n - A005171 (A144459 n).toNat

end

end A165014.P11898178307433392136

/-! ## A165014.P10519310355748307531

`A165015(n)-A089723(A116570(n))`
-/

namespace A165014.P10519310355748307531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165015 n - A089723 (A116570 n).toNat

end

end A165014.P10519310355748307531

/-! ## A165014.P6009214506310384174

`A165015(n)-A001222(A230820(n+1))`
-/

namespace A165014.P6009214506310384174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165015 n - A001222 (A230820 (n + 1)).toNat

end

end A165014.P6009214506310384174

/-! ## A165014.P7615356038918466434

`A072671(n)%A165015(n)`
-/

namespace A165014.P7615356038918466434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072671 n) (A165015 n)

end

end A165014.P7615356038918466434

/-! ## A165014.P13555299695329742051

`A002223(n+1)%A165015(n)`
-/

namespace A165014.P13555299695329742051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002223 (n + 1)) (A165015 n)

end

end A165014.P13555299695329742051

/-! ## A165014.P13428501721729109567

`A045535(n)%A165015(n)`
-/

namespace A165014.P13428501721729109567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045535 n) (A165015 n)

end

end A165014.P13428501721729109567

/-!
# A165015: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-4 Kaprekar map in A165012.

The programs for A165015, there is no canonical definition to state claims against.
-/

/-! ## A165015.P1498693263772572938

`A285006(A285006(n+2)+1)+A165014(n)+1`
-/

namespace A165015.P1498693263772572938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A285006 (n + 2) + 1).toNat + (A165014 n + 1)

end

end A165015.P1498693263772572938

/-! ## A165015.P9713791791395467097

`A165014(n)+A089447(A057944(n))`
-/

namespace A165015.P9713791791395467097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165014 n + A089447 (A057944 n).toNat

end

end A165015.P9713791791395467097

/-! ## A165015.P5337273797870234982

`A165014(n)+A005171(A144459(n))`
-/

namespace A165015.P5337273797870234982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165014 n + A005171 (A144459 n).toNat

end

end A165015.P5337273797870234982

/-! ## A165015.P5244925893692019616

`A165014(n)+A037291(A020639(n+1))`
-/

namespace A165015.P5244925893692019616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165014 n + A037291 (A020639 (n + 1)).toNat

end

end A165015.P5244925893692019616

/-! ## A165015.P429698732271006788

`A165014(n)+A057427(A036039(n+1))`
-/

namespace A165015.P429698732271006788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165014 n + A057427 (A036039 (n + 1)).toNat

end

end A165015.P429698732271006788

/-! ## A165015.P1421686128125180117

`A165014(n)+A001222(A093870(n+1))`
-/

namespace A165015.P1421686128125180117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165014 n + A001222 (A093870 (n + 1)).toNat

end

end A165015.P1421686128125180117

/-!
# A165016: Fixed points of the base-4 Kaprekar map A165012.

The programs for A165016, there is no canonical definition to state claims against.
-/

/-! ## A165016.P16767293006649997983

`A165021(eq[1, A165022(n+1)]+1)`
-/

namespace A165016.P16767293006649997983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A165016.P16767293006649997983

/-! ## A165016.P10967701133664167147

`A165017(record[(n+1)/A165018(n+1)])`
-/

namespace A165016.P10967701133664167147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165018 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165017 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165016.P10967701133664167147

/-! ## A165016.P10051030112519739336

`A165021(record[(n+1)/A165022(n+1)])`
-/

namespace A165016.P10051030112519739336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165022 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165016.P10051030112519739336

/-! ## A165016.P151902103622269971

`record[(2-A165018(n+1))*A165017(n+1)]`
-/

namespace A165016.P151902103622269971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165018 (n + 1)) * A165017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165016.P151902103622269971

/-! ## A165016.P10887551614332237582

`record[(2-A165022(n+1))*A165021(n+1)]`
-/

namespace A165016.P10887551614332237582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165022 (n + 1)) * A165021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165016.P10887551614332237582

/-!
# A165017: Consider the base-4 Kaprekar map n->K(n) defined in A165012. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165017, there is no canonical definition to state claims against.
-/

/-! ## A165017.P12646076090484399392

`∪[A165019(n+1), A165021(n+1)]%A165019(n+1)`
-/

namespace A165017.P12646076090484399392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A165019 (n + 1))

end

end A165017.P12646076090484399392

/-! ## A165017.P16377521598037393370

`∪[A165012(A165021(n+1)), A165021(n+2)]`
-/

namespace A165017.P16377521598037393370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A165021 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165017.P16377521598037393370

/-! ## A165017.P11855275785135933676

`eq[n, A165012(A165012(n))]`
-/

namespace A165017.P11855275785135933676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A165012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165017.P11855275785135933676

/-! ## A165017.P6581744093488380842

`∪[A165021(n+1), lt[A165014(n), 1]]`
-/

namespace A165017.P6581744093488380842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165021 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165014 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A165017.P6581744093488380842

/-!
# A165020: Length of cycle mentioned in A165019.

The programs for A165020, the canonical program `A165020.P5387324205332587883` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165020 has offset 1).

The definition of A165020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165020.P5387324205332587883

`ceil(cosh(acot(acot(n))))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A165020

/-- `ceil(cosh(acot(acot(n))))` -/
def P5387324205332587883.Spec : Prop :=
  ∀ n, P5387324205332587883.a n = A165020 (n + 1)

theorem P5387324205332587883.correct : P5387324205332587883.Spec := by
  intro n
  simp only [A165020, Nat.add_sub_cancel]

end A165020

/-!
# A165021: Consider the base-4 Kaprekar map n->K(n) defined in A165012. Sequence gives least elements of each cycle, including fixed points.

The programs for A165021, there is no canonical definition to state claims against.
-/

/-! ## A165021.P10836208960137217714

`A165017(lt[A004137(2*(n+1)), A124324(3*n+4)])`
-/

namespace A165021.P10836208960137217714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165017 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165021.P10836208960137217714

/-! ## A165021.P14941532761171540805

`A165017(A005837(n+1))%A098326(2*(n+2))`
-/

namespace A165021.P14941532761171540805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165017 (A005837 (n + 1)).toNat) (A098326 (2 * (n + 2)))

end

end A165021.P14941532761171540805

/-! ## A165021.P13160545677773031867

`A165017(lt[A109075(n), n])`
-/

namespace A165021.P13160545677773031867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109075 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A165021.P13160545677773031867

/-!
# A165022: Length of cycle mentioned in A165021.

The programs for A165022, there is no canonical definition to state claims against.
-/

/-! ## A165022.P13147817147668263120

`gcd(A007953(A156552(n+1)), A026479(n+1))`
-/

namespace A165022.P13147817147668263120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 (A156552 (n + 1)).toNat) (A026479 (n + 1))

end

end A165022.P13147817147668263120

/-! ## A165022.P11886415001122883080

`A095771(A064548(n+1)+1)`
-/

namespace A165022.P11886415001122883080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095771 (A064548 (n + 1) + 1).toNat

end

end A165022.P11886415001122883080

/-! ## A165022.P7755307328718421624

`gcd(A006530(A207088(n+1)), A347638(n+1))`
-/

namespace A165022.P7755307328718421624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (A207088 (n + 1)).toNat) (A347638 (n + 1))

end

end A165022.P7755307328718421624

/-! ## A165022.P8985741282555997284

`A322299(gcd(A276625(2*n+5), A345872(n+3)))`
-/

namespace A165022.P8985741282555997284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322299 (Int.gcd (A276625 (2 * n + 5)) (A345872 (n + 3)))

end

end A165022.P8985741282555997284

/-! ## A165022.P7004317770856464945

`gcd(A342728(n), A346801(n+1))`
-/

namespace A165022.P7004317770856464945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342728 n) (A346801 (n + 1))

end

end A165022.P7004317770856464945

/-!
# A165023: Consider the base-4 Kaprekar map n->K(n) defined in A165012. Sequence gives least elements of each cycle of length > 1.

The programs for A165023, there is no canonical definition to state claims against.
-/

/-! ## A165023.P17637561094969569320

`A165019(comp[2*n+3]+n+1)`
-/

namespace A165023.P17637561094969569320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165019 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A165023.P17637561094969569320

/-!
# A165024: Length of cycle mentioned in A165023.

The programs for A165024, there is no canonical definition to state claims against.
-/

/-! ## A165024.P12796221350894559791

`round(ratio[cosh(n)])`
-/

namespace A165024.P12796221350894559791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)

end

end A165024.P12796221350894559791

/-!
# A165025: Number of cycles of n-digit numbers (including fixed points) under the base-4 Kaprekar map A165012.

The programs for A165025, there is no canonical definition to state claims against.
-/

/-! ## A165025.P16675135735802995687

`floor((A165027(n+1)+A165026(n+1))/2)`
-/

namespace A165025.P16675135735802995687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165027 (n + 1) + A165026 (n + 1) : ℚ) / 2⌋

end

end A165025.P16675135735802995687

/-! ## A165025.P4941714806609219399

`A004526(A165027(n+1)+A165026(n+1))`
-/

namespace A165025.P4941714806609219399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165027 (n + 1) + A165026 (n + 1)).toNat

end

end A165025.P4941714806609219399

/-! ## A165025.P13741445573763384011

`A175126(A165027(n+1)+A165026(n+1))`
-/

namespace A165025.P13741445573763384011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A165027 (n + 1) + A165026 (n + 1)).toNat

end

end A165025.P13741445573763384011

/-! ## A165025.P12349543395049817871

`A110654(A165027(n+1)+A165026(n+1)+1)-1`
-/

namespace A165025.P12349543395049817871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A165027 (n + 1) + A165026 (n + 1) + 1).toNat - 1

end

end A165025.P12349543395049817871

/-! ## A165025.P16670354269922066136

`A080791(A003842(n)+A001255(n))`
-/

namespace A165025.P16670354269922066136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A003842 n + A001255 n).toNat

end

end A165025.P16670354269922066136

/-!
# A165027: Number of n-digit fixed points under the base-4 Kaprekar map A165012.

The programs for A165027, the canonical program `A165027.P6129569149110595286` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165027 has offset 1).

The definition of A165027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165027.P6129569149110595286

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=0, a(5)=3, a(6)=1, a(7)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A165027

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P6129569149110595286.Spec : Prop :=
  ∀ n, P6129569149110595286.a n = A165027 (n + 1)

theorem P6129569149110595286.correct : P6129569149110595286.Spec := by
  intro n
  simp only [A165027, Nat.add_sub_cancel]

end A165027

/-! ## A165027.P5603440972456593168

`A173857(n+1)+Δ[A008763(n)]`
-/

namespace A165027.P5603440972456593168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173857 (n + 1) + (f1 (n + 1) - f1 n)

end

end A165027.P5603440972456593168

namespace A165027

/-- `A173857(n+1)+Δ[A008763(n)]` -/
def P5603440972456593168.Spec : Prop :=
  ∀ n, P5603440972456593168.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P6810312683230673844

`Δ[A008763(n)+A008621(A024352(n+1))]`
-/

namespace A165027.P6810312683230673844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A008621 (A024352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P6810312683230673844

namespace A165027

/-- `Δ[A008763(n)+A008621(A024352(n+1))]` -/
def P6810312683230673844.Spec : Prop :=
  ∀ n, P6810312683230673844.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P16871845076593400307

`Δ[A103221(A004277(n))+A008763(n)]`
-/

namespace A165027.P16871845076593400307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004277 n).toNat + A008763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P16871845076593400307

namespace A165027

/-- `Δ[A103221(A004277(n))+A008763(n)]` -/
def P16871845076593400307.Spec : Prop :=
  ∀ n, P16871845076593400307.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P10960475213671193860

`Δ[A008763(n)+A008615(A103517(n))]`
-/

namespace A165027.P10960475213671193860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A008615 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P10960475213671193860

namespace A165027

/-- `Δ[A008763(n)+A008615(A103517(n))]` -/
def P10960475213671193860.Spec : Prop :=
  ∀ n, P10960475213671193860.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P9216488919701878812

`Δ[A008763(n)+A008615(A051755(n+2))]`
-/

namespace A165027.P9216488919701878812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A008615 (A051755 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165027.P9216488919701878812

namespace A165027

/-- `Δ[A008763(n)+A008615(A051755(n+2))]` -/
def P9216488919701878812.Spec : Prop :=
  ∀ n, P9216488919701878812.a n = A165027 (n + 1)

end A165027

/-! ## A165027.P6656936562644411168

`A065033(A008796(n+1))-A008615(n+1)`
-/

namespace A165027.P6656936562644411168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008796 (n + 1)).toNat - A008615 (n + 1)

end

end A165027.P6656936562644411168

namespace A165027

/-- `A065033(A008796(n+1))-A008615(n+1)` -/
def P6656936562644411168.Spec : Prop :=
  ∀ n, P6656936562644411168.a n = A165027 (n + 1)

end A165027

/-!
# A165029: a(n) = smallest number that leads to a new cycle under the base-4 Kaprekar map of A165012.

The programs for A165029, there is no canonical definition to state claims against.
-/

/-! ## A165029.P11612685627811115256

`A291763(A288125(2*n+3))+A000035(A000009(n+4))`
-/

namespace A165029.P11612685627811115256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291763 (A288125 (2 * n + 3)).toNat + A000035 (A000009 (n + 4)).toNat

end

end A165029.P11612685627811115256

/-! ## A165029.P12904279391985997856

`A358220(A204933(3*n+1))+A291763(A288125(2*n+3))`
-/

namespace A165029.P12904279391985997856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 (A204933 (3 * n + 1)).toNat + A291763 (A288125 (2 * n + 3)).toNat

end

end A165029.P12904279391985997856

/-!
# A165030: Smallest member of cycle corresponding to n-th term of A165029.

The programs for A165030, there is no canonical definition to state claims against.
-/

/-! ## A165030.P1154351585596954553

`A165012(A165012(A165012(A165012(A165029(n+1)))))`
-/

namespace A165030.P1154351585596954553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A165012 (A165012 (A165012 (A165029 (n + 1)).toNat).toNat).toNat).toNat

end

end A165030.P1154351585596954553

/-! ## A165030.P209979986084593956

`A165012(A258916(n)+A002981(3*(n+1)))`
-/

namespace A165030.P209979986084593956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A258916 n + A002981 (3 * (n + 1))).toNat

end

end A165030.P209979986084593956

/-!
# A165031: Length of cycle corresponding to n-th term of A165029.

The programs for A165031, there is no canonical definition to state claims against.
-/

/-! ## A165031.P12825067017018495887

`A183014(A185284(n)+A094608(n+1))`
-/

namespace A165031.P12825067017018495887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (A185284 n + A094608 (n + 1)).toNat

end

end A165031.P12825067017018495887

/-! ## A165031.P7595487097337544220

`A183014(A094608(n+1)%A183019(n+1))`
-/

namespace A165031.P7595487097337544220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (Int.tmod (A094608 (n + 1)) (A183019 (n + 1))).toNat

end

end A165031.P7595487097337544220

/-! ## A165031.P409592698255810138

`A183014(A094608(n+1)+A010893(n))`
-/

namespace A165031.P409592698255810138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (A094608 (n + 1) + A010893 (n + 13)).toNat

end

end A165031.P409592698255810138

/-! ## A165031.P16090204762252973849

`gcd(A195241(A182097(n)), A218252(n+1))`
-/

namespace A165031.P16090204762252973849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195241 (A182097 n).toNat) (A218252 (n + 1))

end

end A165031.P16090204762252973849

/-!
# A165032: a(n) = image of n under the base-5 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165032, there is no canonical definition to state claims against.
-/

/-! ## A165032.P6223806757530529534

`A319722(n)-A319653(n)`
-/

namespace A165032.P6223806757530529534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n - A319653 n

end

end A165032.P6223806757530529534

/-! ## A165032.P16539121299554028233

`A319805(n)-2*A319653(n)`
-/

namespace A165032.P16539121299554028233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319805 n - 2 * A319653 n

end

end A165032.P16539121299554028233

/-! ## A165032.P17757179633346293725

`2*A319722(n)-A319805(n)`
-/

namespace A165032.P17757179633346293725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319722 n - A319805 n

end

end A165032.P17757179633346293725

/-! ## A165032.P3475577317818564345

`A055951(A319722(n))`
-/

namespace A165032.P3475577317818564345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 (A319722 n).toNat

end

end A165032.P3475577317818564345

/-! ## A165032.P1701020203310097103

`4*A165033(n)`
-/

namespace A165032.P1701020203310097103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165033 n

end

end A165032.P1701020203310097103

/-! ## A165032.P5702224212187062707

`A008586(A165033(n))`
-/

namespace A165032.P5702224212187062707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A165033 n).toNat

end

end A165032.P5702224212187062707

/-! ## A165032.P1533999828888831295

`A005843(A165033(n)+A165033(n))`
-/

namespace A165032.P1533999828888831295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A165033 n + A165033 n).toNat

end

end A165032.P1533999828888831295

/-!
# A165033: a(n) = A165032(n)/4.

The programs for A165033, there is no canonical definition to state claims against.
-/

/-! ## A165033.P9465501459583428751

`A165032(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165033.P9465501459583428751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165032 n : ℚ) / 4

end

end A165033.P9465501459583428751

/-! ## A165033.P3585693270732584231

`A002265(A165032(n))`
-/

namespace A165033.P3585693270732584231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165032 n).toNat

end

end A165033.P3585693270732584231

/-! ## A165033.P9831560893875306047

`A008624(A165032(n)+1)`
-/

namespace A165033.P9831560893875306047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A165032 n + 1).toNat

end

end A165033.P9831560893875306047

/-! ## A165033.P506468791400845531

`A025480(A165032(n)+1)`
-/

namespace A165033.P506468791400845531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A165032 n + 1).toNat

end

end A165033.P506468791400845531

/-! ## A165033.P17438277190926658741

`A051724(3*A165032(n))`
-/

namespace A165033.P17438277190926658741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A165032 n).toNat

end

end A165033.P17438277190926658741

/-! ## A165033.P7995839611398762

`A008624(or(1, A165032(n)))`
-/

namespace A165033.P7995839611398762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 1 (A165032 n)).toNat

end

end A165033.P7995839611398762

/-! ## A165033.P5713322834248909091

`A025480(xor(1, A165032(n)))`
-/

namespace A165033.P5713322834248909091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A165032 n)).toNat

end

end A165033.P5713322834248909091

/-! ## A165033.P6432940480201913531

`(A319722(n)-A319653(n))/4`
-/

namespace A165033.P6432940480201913531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319722 n - A319653 n : ℚ) / 4

end

end A165033.P6432940480201913531

/-! ## A165033.P6724909539770770574

`A106617(4*A165032(n))`
-/

namespace A165033.P6724909539770770574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (4 * A165032 n).toNat

end

end A165033.P6724909539770770574

/-!
# A165034: Length of preperiodic part of trajectory of n under iteration of the base-5 Kaprekar map in A165032.

The programs for A165034, there is no canonical definition to state claims against.
-/

/-! ## A165034.P4768541464942891843

`A165035(n)-A329198(A356231(3*(n+1)))`
-/

namespace A165034.P4768541464942891843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165035 n - A329198 (A356231 (3 * (n + 1))).toNat

end

end A165034.P4768541464942891843

/-! ## A165034.P11746597851306496719

`A050966(n+1)%A165035(n)`
-/

namespace A165034.P11746597851306496719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050966 (n + 1)) (A165035 n)

end

end A165034.P11746597851306496719

/-! ## A165034.P9749290801425034118

`A094847(n+1)%A165035(n)`
-/

namespace A165034.P9749290801425034118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094847 (n + 1)) (A165035 n)

end

end A165034.P9749290801425034118

/-! ## A165034.P16714733498806454772

`A138267(n+1)%A165035(n)`
-/

namespace A165034.P16714733498806454772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138267 (n + 1)) (A165035 n)

end

end A165034.P16714733498806454772

/-! ## A165034.P14889669335883970845

`A139431(n+1)%A165035(n)`
-/

namespace A165034.P14889669335883970845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139431 (n + 1)) (A165035 n)

end

end A165034.P14889669335883970845

/-!
# A165035: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-5 Kaprekar map in A165032.

The programs for A165035, there is no canonical definition to state claims against.
-/

/-! ## A165035.P11737414667367001874

`A165112(A000041(A164993(n)))+A165034(n)`
-/

namespace A165035.P11737414667367001874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165112 (A000041 (A164993 n).toNat).toNat + A165034 n

end

end A165035.P11737414667367001874

/-! ## A165035.P9993727755016439442

`A165034(n)+A098078(n+9)%2`
-/

namespace A165035.P9993727755016439442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n + Int.tmod (A098078 (n + 9)) 2

end

end A165035.P9993727755016439442

/-! ## A165035.P10331049158063345334

`A165034(n)+A057427(A066739(n))`
-/

namespace A165035.P10331049158063345334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n + A057427 (A066739 n).toNat

end

end A165035.P10331049158063345334

/-! ## A165035.P3772130496768428647

`A165034(n)+A038573(A016116(n+1))`
-/

namespace A165035.P3772130496768428647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n + A038573 (A016116 (n + 1)).toNat

end

end A165035.P3772130496768428647

/-! ## A165035.P15763970065202880193

`A165034(n)+A008481(A050266(n+1))`
-/

namespace A165035.P15763970065202880193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n + A008481 (A050266 (n + 1)).toNat

end

end A165035.P15763970065202880193

/-!
# A165036: Fixed points of the base-5 Kaprekar map A165032.

The programs for A165036, there is no canonical definition to state claims against.
-/

/-! ## A165036.P17927017636524016270

`A165049(lt[A071626(3*n+5), A309612(3*n+4)])`
-/

namespace A165036.P17927017636524016270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309612 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165049 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165036.P17927017636524016270

/-!
# A165037: Consider the base-5 Kaprekar map n->K(n) defined in A165032. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165037, there is no canonical definition to state claims against.
-/

/-! ## A165037.P18094007647774004926

`∪[A165039(n+1), A165041(n+1)]`
-/

namespace A165037.P18094007647774004926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165037.P18094007647774004926

/-! ## A165037.P12884613374802877554

`eq[0, A165034(n)]`
-/

namespace A165037.P12884613374802877554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165037.P12884613374802877554

/-! ## A165037.P4393648381350835190

`2*lt[A165034(2*n), 1]`
-/

namespace A165037.P4393648381350835190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165037.P4393648381350835190

/-! ## A165037.P3301266306252159617

`lt[A165034(n), A060576(n)]`
-/

namespace A165037.P3301266306252159617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165037.P3301266306252159617

/-! ## A165037.P18427802677203975768

`A005843(lt[A165034(2*n), 1])`
-/

namespace A165037.P18427802677203975768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A165037.P18427802677203975768

/-!
# A165039: Consider the base-5 Kaprekar map n->K(n) defined in A165032. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165039, there is no canonical definition to state claims against.
-/

/-! ## A165039.P8370307921010314024

`A165037(A187829(n+1)+A165024(n+1))`
-/

namespace A165039.P8370307921010314024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (A187829 (n + 1) + A165024 (n + 1)).toNat

end

end A165039.P8370307921010314024

/-! ## A165039.P1639307842946535302

`A165037(A187829(n+1)+A165020(n+3))`
-/

namespace A165039.P1639307842946535302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (A187829 (n + 1) + A165020 (n + 3)).toNat

end

end A165039.P1639307842946535302

/-! ## A165039.P18192065142219565357

`A165037(A165024(n+1)+A077168(n))`
-/

namespace A165039.P18192065142219565357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (A165024 (n + 1) + A077168 n).toNat

end

end A165039.P18192065142219565357

/-! ## A165039.P1737815335063608356

`A165037(A165020(n+3)+A077168(n))`
-/

namespace A165039.P1737815335063608356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (A165020 (n + 3) + A077168 n).toNat

end

end A165039.P1737815335063608356

/-! ## A165039.P11570408511658904619

`A165037(A165024(n+1)+A032559(n+1))`
-/

namespace A165039.P11570408511658904619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165037 (A165024 (n + 1) + A032559 (n + 1)).toNat

end

end A165039.P11570408511658904619

/-!
# A165040: Length of cycle mentioned in A165039.

The programs for A165040, there is no canonical definition to state claims against.
-/

/-! ## A165040.P2748729776658800837

`filter[A165038(n+3), A354807(#)]`
-/

namespace A165040.P2748729776658800837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165038 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A165040.P2748729776658800837

/-!
# A165041: Consider the base-5 Kaprekar map n->K(n) defined in A165032. Sequence gives least elements of each cycle, including fixed points.

The programs for A165041, there is no canonical definition to state claims against.
-/

/-! ## A165041.P12324875501216264902

`∪[A165049(A051903(2^(n+1))), A165043(n+1)]`
-/

namespace A165041.P12324875501216264902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165049 (A051903 (2 ^ (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165041.P12324875501216264902

/-! ## A165041.P16419186081093009966

`∪[A165043(n+1), A165049(n+1)%A001395(n)]`
-/

namespace A165041.P16419186081093009966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165049 (n + 1)) (A001395 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165041.P16419186081093009966

/-! ## A165041.P4807478867258299151

`∪[A165043(n+1), A015070(n)!*A165049(n+1)]`
-/

namespace A165041.P4807478867258299151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A015070 n).toNat : ℤ) * A165049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165041.P4807478867258299151

/-!
# A165042: Length of cycle mentioned in A165041.

The programs for A165042, there is no canonical definition to state claims against.
-/

/-! ## A165042.P1247508343464055225

`xor(A165050(n+1), A309061(A098473(n)))`
-/

namespace A165042.P1247508343464055225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165050 (n + 1)) (A309061 (A098473 n).toNat)

end

end A165042.P1247508343464055225

/-! ## A165042.P8280985888423425763

`A165050(∑[A141689(A141689(n+1))])`
-/

namespace A165042.P8280985888423425763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (A141689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165042.P8280985888423425763

/-! ## A165042.P5750911485972818891

`A185284(A000009(n))+A165050(n+1)`
-/

namespace A165042.P5750911485972818891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000009 n).toNat + A165050 (n + 1)

end

end A165042.P5750911485972818891

/-! ## A165042.P6491515024919527424

`A185284(A182097(n))+A165050(n+1)`
-/

namespace A165042.P6491515024919527424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A182097 n).toNat + A165050 (n + 1)

end

end A165042.P6491515024919527424

/-! ## A165042.P4761947521645012192

`A165050(n+1)+A091247(A185284(2*(n+2)))`
-/

namespace A165042.P4761947521645012192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165050 (n + 1) + A091247 (A185284 (2 * (n + 2))).toNat

end

end A165042.P4761947521645012192

/-!
# A165043: Consider the base-5 Kaprekar map n->K(n) defined in A165032. Sequence gives least elements of each cycle of length > 1.

The programs for A165043, there is no canonical definition to state claims against.
-/

/-! ## A165043.P11688048873808546255

`∩[A165039(n+1), A165041(n+1)]`
-/

namespace A165043.P11688048873808546255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165043.P11688048873808546255

/-!
# A165044: Length of cycle mentioned in A165043.

The programs for A165044, there is no canonical definition to state claims against.
-/

/-! ## A165044.P7570691778186807614

`A165042(lt[1, A165042(n+1)]+1)`
-/

namespace A165044.P7570691778186807614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165044.P7570691778186807614

/-! ## A165044.P307845786306847168

`A165042(comp[eq[1, A165042(n+1)]]+1)`
-/

namespace A165044.P307845786306847168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A165044.P307845786306847168

/-! ## A165044.P7711538492934313127

`A165042(comp[n*(2-A165042(n+1))]+1)`
-/

namespace A165044.P7711538492934313127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A165042 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A165044.P7711538492934313127

/-!
# A165046: Number of n-digit numbers in a cycle (including fixed points) under the base-5 Kaprekar map A165032.

The programs for A165046, there is no canonical definition to state claims against.
-/

/-! ## A165046.P8205080922881288459

`A161953(A324233(n+1)+A165042(n+1))`
-/

namespace A165046.P8205080922881288459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161953 (A324233 (n + 1) + A165042 (n + 1)).toNat

end

end A165046.P8205080922881288459

/-! ## A165046.P7609254620749327043

`A187829(A324233(n+1)+A165042(n+1))`
-/

namespace A165046.P7609254620749327043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A324233 (n + 1) + A165042 (n + 1)).toNat

end

end A165046.P7609254620749327043

/-!
# A165048: a(n) = smallest number that leads to a new cycle under the base-5 Kaprekar map of A165032.

The programs for A165048, there is no canonical definition to state claims against.
-/

/-! ## A165048.P7574584510332956461

`A376599(A076227(3*n+2))+5^n+1`
-/

namespace A165048.P7574584510332956461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376599 (A076227 (3 * n + 2)).toNat + (5 ^ n : ℤ) + 1

end

end A165048.P7574584510332956461

/-! ## A165048.P11948230647773630910

`xor(A002024(n+1), A256415(A000351(n)))`
-/

namespace A165048.P11948230647773630910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002024 (n + 1)) (A256415 (A000351 n).toNat)

end

end A165048.P11948230647773630910

/-!
# A165049: Smallest member of cycle corresponding to n-th term of A165048.

The programs for A165049, there is no canonical definition to state claims against.
-/

/-! ## A165049.P15433835718140745684

`A165041(A052409(2^(n+1)))`
-/

namespace A165049.P15433835718140745684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165041 (A052409 (2 ^ (n + 1))).toNat

end

end A165049.P15433835718140745684

/-! ## A165049.P5028413781047987199

`A165041(n+1)%A001395(n)`
-/

namespace A165049.P5028413781047987199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165041 (n + 1)) (A001395 n)

end

end A165049.P5028413781047987199

/-! ## A165049.P10723618730316928216

`A165041(A001222(∑[2^n]+1))`
-/

namespace A165049.P10723618730316928216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165041 (A001222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A165049.P10723618730316928216

/-! ## A165049.P8604216195518465175

`C(A165041(n+1), A185236(n)!)`
-/

namespace A165049.P8604216195518465175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165041 (n + 1)).toNat (Nat.factorial (A185236 n).toNat)

end

end A165049.P8604216195518465175

/-! ## A165049.P601906106637301955

`A165041(n+1)+A370583(2*(n+2))%2`
-/

namespace A165049.P601906106637301955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165041 (n + 1) + Int.tmod (A370583 (2 * (n + 2))) 2

end

end A165049.P601906106637301955

/-!
# A165050: Length of cycle corresponding to n-th term of A165048.

The programs for A165050, there is no canonical definition to state claims against.
-/

/-! ## A165050.P16400784484877841618

`xor(A165042(n+1), A309061(A098473(n)))`
-/

namespace A165050.P16400784484877841618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165042 (n + 1)) (A309061 (A098473 n).toNat)

end

end A165050.P16400784484877841618

/-! ## A165050.P9944434718774397869

`A165042(n+1)-A185284(A000009(n))`
-/

namespace A165050.P9944434718774397869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A185284 (A000009 n).toNat

end

end A165050.P9944434718774397869

/-! ## A165050.P15103753961985533323

`A165042(n+1)-A185284(A182097(n))`
-/

namespace A165050.P15103753961985533323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A185284 (A182097 n).toNat

end

end A165050.P15103753961985533323

/-! ## A165050.P8480152662522760054

`A165042(n+1)-A091247(A185284(2*(n+2)))`
-/

namespace A165050.P8480152662522760054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A091247 (A185284 (2 * (n + 2))).toNat

end

end A165050.P8480152662522760054

/-! ## A165050.P147094806911642084

`A165042(n+1)-A000035(A338855(3*n+2))`
-/

namespace A165050.P147094806911642084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (n + 1) - A000035 (A338855 (3 * n + 2)).toNat

end

end A165050.P147094806911642084

/-!
# A165051: a(n) = image of n under the base-6 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165051, there is no canonical definition to state claims against.
-/

/-! ## A165051.P15367187153877566618

`A319723(n)-A319654(n)`
-/

namespace A165051.P15367187153877566618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n - A319654 n

end

end A165051.P15367187153877566618

/-! ## A165051.P17894862183306019077

`A319806(n)-2*A319654(n)`
-/

namespace A165051.P17894862183306019077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319806 n - 2 * A319654 n

end

end A165051.P17894862183306019077

/-! ## A165051.P4563552656214780256

`2*A319723(n)-A319806(n)`
-/

namespace A165051.P4563552656214780256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319723 n - A319806 n

end

end A165051.P4563552656214780256

/-! ## A165051.P166977724617685422

`A055953(A319723(n))`
-/

namespace A165051.P166977724617685422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 (A319723 n).toNat

end

end A165051.P166977724617685422

/-! ## A165051.P1588893122956237818

`5*A165052(n)`
-/

namespace A165051.P1588893122956237818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A165052 n

end

end A165051.P1588893122956237818

/-! ## A165051.P15620993283147032977

`A008587(A165052(n))`
-/

namespace A165051.P15620993283147032977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A165052 n).toNat

end

end A165051.P15620993283147032977

/-!
# A165052: a(n) = A165051(n)/5.

The programs for A165052, there is no canonical definition to state claims against.
-/

/-! ## A165052.P13295762412702425688

`A165051(n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165052.P13295762412702425688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165051 n : ℚ) / 5

end

end A165052.P13295762412702425688

/-! ## A165052.P12155827334371427539

`A002266(A165051(n))`
-/

namespace A165052.P12155827334371427539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A165051 n).toNat

end

end A165052.P12155827334371427539

/-! ## A165052.P7920478858626093848

`A059995(2*A165051(n))`
-/

namespace A165052.P7920478858626093848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A165051 n).toNat

end

end A165052.P7920478858626093848

/-! ## A165052.P8212987987511623907

`A076310(2*A165051(n))`
-/

namespace A165052.P8212987987511623907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (2 * A165051 n).toNat

end

end A165052.P8212987987511623907

/-! ## A165052.P12627981757361850506

`A194508(A165051(n)+1)+1`
-/

namespace A165052.P12627981757361850506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (A165051 n + 1).toNat + 1

end

end A165052.P12627981757361850506

/-! ## A165052.P16340870710497562979

`(A319723(n)-A319654(n))/5`
-/

namespace A165052.P16340870710497562979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319723 n - A319654 n : ℚ) / 5

end

end A165052.P16340870710497562979

/-! ## A165052.P5769701257859328895

`A059995(A165051(n)+A165051(n)+1)`
-/

namespace A165052.P5769701257859328895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A165051 n + (A165051 n + 1)).toNat

end

end A165052.P5769701257859328895

/-!
# A165053: Length of preperiodic part of trajectory of n under iteration of the base-6 Kaprekar map in A165051.

The programs for A165053, there is no canonical definition to state claims against.
-/

/-! ## A165053.P1755510010763495138

`(A165054(n)-1)%5`
-/

namespace A165053.P1755510010763495138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165054 n - 1) 5

end

end A165053.P1755510010763495138

/-! ## A165053.P8680487445121451623

`(A208769(C(2, n+2)+3)+A165054(n))%5`
-/

namespace A165053.P8680487445121451623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208769 (Nat.choose 2 (n + 2) + 3) + A165054 n) 5

end

end A165053.P8680487445121451623

/-! ## A165053.P13709879749754588808

`(A208769(Δ[A004525(n)]+3)+A165054(n))%5`
-/

namespace A165053.P13709879749754588808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208769 (f1 (n + 1) - f1 n + 3).toNat + A165054 n) 5

end

end A165053.P13709879749754588808

/-! ## A165053.P15991719747082287952

`(A208769(A117368(n+2))+A165054(n))%5`
-/

namespace A165053.P15991719747082287952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208769 (A117368 (n + 2)).toNat + A165054 n) 5

end

end A165053.P15991719747082287952

/-! ## A165053.P6677544402062274328

`(A208769(A038614(n+1))+A165054(n))%5`
-/

namespace A165053.P6677544402062274328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208769 (A038614 (n + 1)).toNat + A165054 n) 5

end

end A165053.P6677544402062274328

/-! ## A165053.P17101263414932303100

`A165054(n)-A060576(A253769(n+1))`
-/

namespace A165053.P17101263414932303100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A060576 (A253769 (n + 1)).toNat

end

end A165053.P17101263414932303100

/-! ## A165053.P8214716122407001797

`A165054(n)-A257680(A200143(n+1))`
-/

namespace A165053.P8214716122407001797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A257680 (A200143 (n + 1)).toNat

end

end A165053.P8214716122407001797

/-! ## A165053.P13410458483694555801

`A165054(n)-A324912(A237810(n+1))`
-/

namespace A165053.P13410458483694555801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A324912 (A237810 (n + 1)).toNat

end

end A165053.P13410458483694555801

/-! ## A165053.P10585621101154107947

`A165054(n)-A032741(A037153(A188045(n+1)))`
-/

namespace A165053.P10585621101154107947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A032741 (A037153 (A188045 (n + 1)).toNat).toNat

end

end A165053.P10585621101154107947

/-! ## A165053.P4895239760204165124

`A165054(n)-A006519(A126108(n+2))`
-/

namespace A165053.P4895239760204165124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A006519 (A126108 (n + 2)).toNat

end

end A165053.P4895239760204165124

/-! ## A165053.P2172577217753306508

`A165054(n)-A105234(A156140(n)²)`
-/

namespace A165053.P2172577217753306508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A105234 (A156140 n ^ 2).toNat

end

end A165053.P2172577217753306508

/-! ## A165053.P9708112705125775016

`A165054(n)-A003557(A173971(n+1))`
-/

namespace A165053.P9708112705125775016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A003557 (A173971 (n + 1)).toNat

end

end A165053.P9708112705125775016

/-! ## A165053.P15446028445759538511

`A165054(n)-A267635(A022552(n+1))`
-/

namespace A165053.P15446028445759538511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A267635 (A022552 (n + 1)).toNat

end

end A165053.P15446028445759538511

/-! ## A165053.P5290214521195571904

`A165054(n)-A160595(A214179(n+1))`
-/

namespace A165053.P5290214521195571904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A160595 (A214179 (n + 1)).toNat

end

end A165053.P5290214521195571904

/-! ## A165053.P12377840367717753740

`A165054(n)-A080339(A001359(n+1))`
-/

namespace A165053.P12377840367717753740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A080339 (A001359 (n + 1)).toNat

end

end A165053.P12377840367717753740

/-! ## A165053.P8333375825643070852

`A165054(n)-A046951(A140444(n+1))`
-/

namespace A165053.P8333375825643070852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A046951 (A140444 (n + 1)).toNat

end

end A165053.P8333375825643070852

/-! ## A165053.P11511246614859775236

`A165054(n)-A008284(A152947(n+1))`
-/

namespace A165053.P11511246614859775236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A008284 (A152947 (n + 1)).toNat

end

end A165053.P11511246614859775236

/-! ## A165053.P12214435176789910585

`A165054(n)-A275416(∑[n+1])`
-/

namespace A165053.P12214435176789910585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 n - A275416 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165053.P12214435176789910585

/-!
# A165054: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-6 Kaprekar map in A165051.

The programs for A165054, there is no canonical definition to state claims against.
-/

/-! ## A165054.P9388918524531442102

`A294333(p?[A017353(n)])+A165053(n)`
-/

namespace A165054.P9388918524531442102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A165053 n

end

end A165054.P9388918524531442102

/-! ## A165054.P1977924484228551393

`A165053(n)+A060576(A078287(n+1))`
-/

namespace A165054.P1977924484228551393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A060576 (A078287 (n + 1)).toNat

end

end A165054.P1977924484228551393

/-! ## A165054.P9283968207821267743

`A257680(A200143(n+1))+A165053(n)`
-/

namespace A165054.P9283968207821267743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A200143 (n + 1)).toNat + A165053 n

end

end A165054.P9283968207821267743

/-! ## A165054.P15125612696999909430

`A165053(n)+A060576(A053204(n))`
-/

namespace A165054.P15125612696999909430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A060576 (A053204 n).toNat

end

end A165054.P15125612696999909430

/-! ## A165054.P13479294251556318594

`A165053(n)+A108998(A008805(n))`
-/

namespace A165054.P13479294251556318594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A108998 (A008805 n).toNat

end

end A165054.P13479294251556318594

/-! ## A165054.P8696472483205515382

`A165053(n)+A072411(A215361(n+1))`
-/

namespace A165054.P8696472483205515382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A072411 (A215361 (n + 1)).toNat

end

end A165054.P8696472483205515382

/-! ## A165054.P2578471673868389999

`A165053(n)+A010051(A180451(n+1))`
-/

namespace A165054.P2578471673868389999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A010051 (A180451 (n + 1)).toNat

end

end A165054.P2578471673868389999

/-! ## A165054.P4808399628460153739

`A165053(n)+A072411(A031157(n+1))`
-/

namespace A165054.P4808399628460153739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A072411 (A031157 (n + 1)).toNat

end

end A165054.P4808399628460153739

/-! ## A165054.P2844238396357350346

`A165053(n)+A000034(A044217(A076396(n+1)))`
-/

namespace A165054.P2844238396357350346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A000034 (A044217 (A076396 (n + 1)).toNat).toNat

end

end A165054.P2844238396357350346

/-! ## A165054.P12024884911305690155

`A165053(n)+A118102(A257418(A300360(n+1)))`
-/

namespace A165054.P12024884911305690155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A118102 (A257418 (A300360 (n + 1)).toNat).toNat

end

end A165054.P12024884911305690155

/-! ## A165054.P13198038865475541062

`A165053(n)+A107286(A258185(n+1))`
-/

namespace A165054.P13198038865475541062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A107286 (A258185 (n + 1)).toNat

end

end A165054.P13198038865475541062

/-! ## A165054.P14349702704658295863

`A165053(n)+A000034(A044217(n+1))²`
-/

namespace A165054.P14349702704658295863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A000034 (A044217 (n + 1)).toNat ^ 2

end

end A165054.P14349702704658295863

/-! ## A165054.P17634641348416831636

`A294333(p?[A294333(n)])+A165053(n)`
-/

namespace A165054.P17634641348416831636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A165053 n

end

end A165054.P17634641348416831636

/-! ## A165054.P12991539127396180303

`A165053(n)+A118102(n²)`
-/

namespace A165054.P12991539127396180303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n + A118102 (n ^ 2)

end

end A165054.P12991539127396180303

/-!
# A165055: Fixed points of the base-6 Kaprekar map A165051.

The programs for A165055, there is no canonical definition to state claims against.
-/

/-! ## A165055.P18404133675309442094

`A165060(record[(n+1)/A165061(n+1)])`
-/

namespace A165055.P18404133675309442094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165061 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165060 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165055.P18404133675309442094

/-! ## A165055.P16540610656588200965

`record[(2-A165061(n+1))*A165060(n+1)]`
-/

namespace A165055.P16540610656588200965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165061 (n + 1)) * A165060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165055.P16540610656588200965

/-!
# A165056: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165056, there is no canonical definition to state claims against.
-/

/-! ## A165056.P14419567631452645351

`∪[A165058(n+1), A165060(n+1)]`
-/

namespace A165056.P14419567631452645351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165056.P14419567631452645351

/-! ## A165056.P3624498515825689495

`eq[0, A165053(n)]`
-/

namespace A165056.P3624498515825689495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165056.P3624498515825689495

/-! ## A165056.P12216347906640283979

`lt[A165053(n), A060576(n)]`
-/

namespace A165056.P12216347906640283979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165056.P12216347906640283979

/-! ## A165056.P12983599702369818232

`lt[A165053(n), A033999(n)²]`
-/

namespace A165056.P12983599702369818232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165056.P12983599702369818232

/-!
# A165058: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165058, there is no canonical definition to state claims against.
-/

/-! ## A165058.P14606624912182796579

`A165056(A351870(n+3))`
-/

namespace A165058.P14606624912182796579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (A351870 (n + 3)).toNat

end

end A165058.P14606624912182796579

/-! ## A165058.P6064505803013672550

`A165056(A032559(n+2)+1)`
-/

namespace A165058.P6064505803013672550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (A032559 (n + 2) + 1).toNat

end

end A165058.P6064505803013672550

/-! ## A165058.P15124963599590521739

`A165056(A276142(n+2)+1)`
-/

namespace A165058.P15124963599590521739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (A276142 (n + 2) + 1).toNat

end

end A165058.P15124963599590521739

/-! ## A165058.P2106510471216733678

`filter[A165056(n+2), A188011(#)]`
-/

namespace A165058.P2106510471216733678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188011 (f1 j).toNat = 1) n)

end

end A165058.P2106510471216733678

/-!
# A165060: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives least elements of each cycle, including fixed points.

The programs for A165060, there is no canonical definition to state claims against.
-/

/-! ## A165060.P2465850202910667849

`∪[A165055(A032559(n+1)), A165062(n+1)]`
-/

namespace A165060.P2465850202910667849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165055 (A032559 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165060.P2465850202910667849

/-! ## A165060.P3693673925582001581

`∪[A165051(A165055(n+1)), A165062(n+1)]`
-/

namespace A165060.P3693673925582001581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 (A165055 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165060.P3693673925582001581

/-!
# A165061: Length of cycle mentioned in A165060.

The programs for A165061, there is no canonical definition to state claims against.
-/

/-! ## A165061.P11247929293278638368

`A050873(A270831(2*n+3)-A160051(n))`
-/

namespace A165061.P11247929293278638368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A270831 (2 * n + 3) - A160051 n).toNat

end

end A165061.P11247929293278638368

/-!
# A165062: Consider the base-6 Kaprekar map n->K(n) defined in A165051. Sequence gives least elements of each cycle of length > 1.

The programs for A165062, there is no canonical definition to state claims against.
-/

/-! ## A165062.P4715017052242253861

`∩[A165058(n+1), A165060(n+1)]`
-/

namespace A165062.P4715017052242253861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165062.P4715017052242253861

/-!
# A165063: Length of cycle mentioned in A165062.

The programs for A165063, the canonical program `A165063.P9027625364471019247` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165063 has offset 1).

The definition of A165063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165063.P9027625364471019247

`a(n-1)` with `a(0)=6, a(1)=2, a(2)=3, a(3)=2, a(4)=7, a(5)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A165063

/-- `a(n-1)` -/
def P9027625364471019247.Spec : Prop :=
  ∀ n, (P9027625364471019247.a n : ℤ) = A165063 (n + 1)

theorem P9027625364471019247.correct : P9027625364471019247.Spec := by
  intro n
  simp only [A165063, Nat.add_sub_cancel]

end A165063

/-!
# A165066: Number of n-digit fixed points under the base-6 Kaprekar map A165051.

The programs for A165066, there is no canonical definition to state claims against.
-/

/-! ## A165066.P17512404341235346280

`A174349(A179878(3*n+4))%A327567(3*(n+1))`
-/

namespace A165066.P17512404341235346280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174349 (A179878 (3 * n + 4)).toNat) (A327567 (3 * (n + 1)))

end

end A165066.P17512404341235346280

/-! ## A165066.P5031369837157969506

`xor(A000377(n), A001878(A104004(n)))`
-/

namespace A165066.P5031369837157969506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000377 n) (A001878 (A104004 n).toNat)

end

end A165066.P5031369837157969506

/-! ## A165066.P5725394725026416075

`xor(A039963(A114203(n)), A325836(n))`
-/

namespace A165066.P5725394725026416075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039963 (A114203 n).toNat) (A325836 n)

end

end A165066.P5725394725026416075

/-! ## A165066.P16648437981579006254

`A339399(n+1)%A278222(A032051(n))`
-/

namespace A165066.P16648437981579006254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339399 (n + 1)) (A278222 (A032051 n).toNat)

end

end A165066.P16648437981579006254

/-! ## A165066.P15943618802444977228

`and(A008589(A095539(n)), A339399(n+1))`
-/

namespace A165066.P15943618802444977228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008589 (A095539 n).toNat) (A339399 (n + 1))

end

end A165066.P15943618802444977228

/-!
# A165069: Smallest member of cycle corresponding to n-th term of A165068.

The programs for A165069, there is no canonical definition to state claims against.
-/

/-! ## A165069.P7900188328357956839

`A165060(A118317(n+1)^A345939(n+1))`
-/

namespace A165069.P7900188328357956839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165060 (SequenceMachineLib.roundAway ((A118317 (n + 1) : ℚ) ^ (A345939 (n + 1) : ℤ))).toNat

end

end A165069.P7900188328357956839

/-!
# A165071: a(n) = image of n under the base-7 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165071, there is no canonical definition to state claims against.
-/

/-! ## A165071.P9230708927562448964

`A319724(n)-A319655(n)`
-/

namespace A165071.P9230708927562448964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n - A319655 n

end

end A165071.P9230708927562448964

/-! ## A165071.P17604101282162174653

`A319807(n)-2*A319655(n)`
-/

namespace A165071.P17604101282162174653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319807 n - 2 * A319655 n

end

end A165071.P17604101282162174653

/-! ## A165071.P7957364908719034708

`2*A319724(n)-A319807(n)`
-/

namespace A165071.P7957364908719034708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319724 n - A319807 n

end

end A165071.P7957364908719034708

/-! ## A165071.P4674637002387560606

`A055955(A319724(n))`
-/

namespace A165071.P4674637002387560606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 (A319724 n).toNat

end

end A165071.P4674637002387560606

/-! ## A165071.P9495719166952598088

`6*A165072(n)`
-/

namespace A165071.P9495719166952598088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A165072 n

end

end A165071.P9495719166952598088

/-! ## A165071.P5469860961615882412

`A008588(A165072(n))`
-/

namespace A165071.P5469860961615882412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A165072 n).toNat

end

end A165071.P5469860961615882412

/-!
# A165072: a(n) = A165071(n)/6.

The programs for A165072, there is no canonical definition to state claims against.
-/

/-! ## A165072.P17969435554586216089

`A165071(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165072.P17969435554586216089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165071 n : ℚ) / 6

end

end A165072.P17969435554586216089

/-! ## A165072.P4400931914916577323

`A008615(A165071(n))`
-/

namespace A165072.P4400931914916577323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A165071 n).toNat

end

end A165072.P4400931914916577323

/-! ## A165072.P15060209615075389018

`A008612(A165071(n)+1)`
-/

namespace A165072.P15060209615075389018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A165071 n + 1).toNat

end

end A165072.P15060209615075389018

/-! ## A165072.P13266219901236398587

`A103221(A165071(n)+1)`
-/

namespace A165072.P13266219901236398587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A165071 n + 1).toNat

end

end A165072.P13266219901236398587

/-! ## A165072.P2291237925963771763

`A055955(A319724(n))/6`
-/

namespace A165072.P2291237925963771763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055955 (A319724 n).toNat : ℚ) / 6

end

end A165072.P2291237925963771763

/-! ## A165072.P1660861474307083208

`A008612(or(1, A165071(n)))`
-/

namespace A165072.P1660861474307083208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.lor 1 (A165071 n)).toNat

end

end A165072.P1660861474307083208

/-! ## A165072.P13778873571019854360

`A103221(or(1, A165071(n)))`
-/

namespace A165072.P13778873571019854360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 1 (A165071 n)).toNat

end

end A165072.P13778873571019854360

/-! ## A165072.P1433144054258066219

`A103221(xor(1, A165071(n)))`
-/

namespace A165072.P1433144054258066219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.xor 1 (A165071 n)).toNat

end

end A165072.P1433144054258066219

/-! ## A165072.P1541627906370548267

`(A319724(n)-A319655(n))/6`
-/

namespace A165072.P1541627906370548267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319724 n - A319655 n : ℚ) / 6

end

end A165072.P1541627906370548267

/-!
# A165073: Length of preperiodic part of trajectory of n under iteration of the base-7 Kaprekar map in A165071.

The programs for A165073, there is no canonical definition to state claims against.
-/

/-! ## A165073.P16829260126640017125

`A165074(n)-A094267((2*n)²)`
-/

namespace A165073.P16829260126640017125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n - A094267 ((2 * n) ^ 2)

end

end A165073.P16829260126640017125

/-! ## A165073.P4653282425657778781

`A165074(n)-A267848((2*n)²)`
-/

namespace A165073.P4653282425657778781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n - A267848 ((2 * n) ^ 2)

end

end A165073.P4653282425657778781

/-! ## A165073.P3009805771195972022

`A165074(n)+A057428(A088954(n))`
-/

namespace A165073.P3009805771195972022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n + A057428 (A088954 n).toNat

end

end A165073.P3009805771195972022

/-! ## A165073.P16144599028159936143

`A165074(n)+A008836(A256481(n))`
-/

namespace A165073.P16144599028159936143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n + A008836 (A256481 n).toNat

end

end A165073.P16144599028159936143

/-! ## A165073.P8448052204290559413

`A165074(n)+A153881(A306112(n))`
-/

namespace A165073.P8448052204290559413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n + A153881 (A306112 n).toNat

end

end A165073.P8448052204290559413

/-! ## A165073.P5209183240630476847

`A165074(n)+A008683(A002496(n+1))`
-/

namespace A165073.P5209183240630476847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n + A008683 (A002496 (n + 1)).toNat

end

end A165073.P5209183240630476847

/-!
# A165074: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-7 Kaprekar map in A165071.

The programs for A165074, there is no canonical definition to state claims against.
-/

/-! ## A165074.P15846845722146648687

`dr(A165073(n)+A146091(n+1))`
-/

namespace A165074.P15846845722146648687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A165073 n + A146091 (n + 1))

end

end A165074.P15846845722146648687

/-! ## A165074.P5710947562044110782

`A165073(n)+A000688(A256481(n))`
-/

namespace A165074.P5710947562044110782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 n + A000688 (A256481 n).toNat

end

end A165074.P5710947562044110782

/-! ## A165074.P417809428191150755

`A165073(n)+A001222(A002496(n+1))`
-/

namespace A165074.P417809428191150755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 n + A001222 (A002496 (n + 1)).toNat

end

end A165074.P417809428191150755

/-! ## A165074.P5622863514196877143

`A165073(n)+A054977(A054554(n+1))`
-/

namespace A165074.P5622863514196877143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 n + A054977 (A054554 (n + 1)).toNat

end

end A165074.P5622863514196877143

/-! ## A165074.P11455876249010958112

`A165073(n)+A001222(A118915(n+1))`
-/

namespace A165074.P11455876249010958112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 n + A001222 (A118915 (n + 1)).toNat

end

end A165074.P11455876249010958112

/-! ## A165074.P16741304824646460715

`A165073(n)+A001221(A168454(n+1))`
-/

namespace A165074.P16741304824646460715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 n + A001221 (A168454 (n + 1)).toNat

end

end A165074.P16741304824646460715

/-! ## A165074.P16903390308006513739

`A165073(n)+A001222(A228991(n+1))`
-/

namespace A165074.P16903390308006513739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 n + A001222 (A228991 (n + 1)).toNat

end

end A165074.P16903390308006513739

/-!
# A165075: Fixed points of the base-7 Kaprekar map A165071.

The programs for A165075, there is no canonical definition to state claims against.
-/

/-! ## A165075.P17889337593168363653

`A165076(lt[A165077(n+1), 2]+1)`
-/

namespace A165075.P17889337593168363653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165076 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A165075.P17889337593168363653

/-!
# A165076: Consider the base-7 Kaprekar map n->K(n) defined in A165071. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165076, there is no canonical definition to state claims against.
-/

/-! ## A165076.P5411119655495494325

`A165078(A028310(n))%A098547(A111396(n))`
-/

namespace A165076.P5411119655495494325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165078 (A028310 n).toNat) (A098547 (A111396 n).toNat)

end

end A165076.P5411119655495494325

/-! ## A165076.P8429281262464090107

`A165078(A000007(n)+n)%A261655(A010000(n))`
-/

namespace A165076.P8429281262464090107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165078 (A000007 n + (n : ℤ)).toNat) (A261655 (A010000 n).toNat)

end

end A165076.P8429281262464090107

/-! ## A165076.P801281721164918545

`A060576(A077957(n))*A165078(A000007(n)+n)`
-/

namespace A165076.P801281721164918545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A077957 n).toNat * A165078 (A000007 n + (n : ℤ)).toNat

end

end A165076.P801281721164918545

/-! ## A165076.P11104687433492388374

`∑{e}[2^n, A165078(#)]`
-/

namespace A165076.P11104687433492388374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A165078 (Nat.factorization (f1 n) p)

end

end A165076.P11104687433492388374

/-!
# A165078: Consider the base-7 Kaprekar map n->K(n) defined in A165071. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165078, there is no canonical definition to state claims against.
-/

/-! ## A165078.P7178407547672683053

`lcm(A084989(n+1), A165076(n+2))`
-/

namespace A165078.P7178407547672683053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084989 (n + 1)) (A165076 (n + 2))

end

end A165078.P7178407547672683053

/-! ## A165078.P5980865020214303361

`A165076(n+2)+A088806(n²+1)`
-/

namespace A165078.P5980865020214303361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165076 (n + 2) + A088806 (n ^ 2 + 1)

end

end A165078.P5980865020214303361

/-! ## A165078.P16070195995354767623

`A165076(n+2)%A080132(A000217(n))`
-/

namespace A165078.P16070195995354767623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165076 (n + 2)) (A080132 (A000217 n).toNat)

end

end A165078.P16070195995354767623

/-! ## A165078.P17015163099978270869

`A165076(n+2)+A000007(A062786(n+1))`
-/

namespace A165078.P17015163099978270869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165076 (n + 2) + A000007 (A062786 (n + 1)).toNat

end

end A165078.P17015163099978270869

/-! ## A165078.P9789093795267515957

`A165076(2%A240179(n+4)+n)`
-/

namespace A165078.P9789093795267515957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165076 (Int.tmod 2 (A240179 (n + 4)) + (n : ℤ)).toNat

end

end A165078.P9789093795267515957

/-!
# A165079: Length of cycle mentioned in A165078.

The programs for A165079, there is no canonical definition to state claims against.
-/

/-! ## A165079.P11873090736141788766

`A165077(n+2)%A072982(n+1)`
-/

namespace A165079.P11873090736141788766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165077 (n + 2)) (A072982 (n + 1))

end

end A165079.P11873090736141788766

/-! ## A165079.P7444299217895531845

`A165077(lt[A035441(n+1), A324774(n)])`
-/

namespace A165079.P7444299217895531845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165077 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165079.P7444299217895531845

/-! ## A165079.P15083847424920085315

`A062378(A326256(n+1))^A062378(n+2)*A165077(n+2)`
-/

namespace A165079.P15083847424920085315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062378 (A326256 (n + 1)).toNat : ℚ) ^ (A062378 (n + 2) : ℤ) * (A165077 (n + 2) : ℚ)

end

end A165079.P15083847424920085315

/-! ## A165079.P7341907991108493705

`A165077(n+2)^A322790(A081290(n))`
-/

namespace A165079.P7341907991108493705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165077 (n + 2) : ℚ) ^ (A322790 (A081290 n).toNat : ℤ)

end

end A165079.P7341907991108493705

/-! ## A165079.P103877204066878350

`A341027(A165195(n+1))+A165077(n+2)`
-/

namespace A165079.P103877204066878350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A165195 (n + 1)).toNat + 220) + A165077 (n + 2)

end

end A165079.P103877204066878350

/-!
# A165080: Consider the base-7 Kaprekar map n->K(n) defined in A165071. Sequence gives least elements of each cycle, including fixed points.

The programs for A165080, there is no canonical definition to state claims against.
-/

/-! ## A165080.P430660157361675661

`A165082(A028310(n))%A324023(2*n+3)`
-/

namespace A165080.P430660157361675661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165082 (A028310 n).toNat) (A324023 (2 * n + 3))

end

end A165080.P430660157361675661

/-! ## A165080.P1852582017948634876

`∪[A165088(A032559(n+1)), A165082(n+1)]`
-/

namespace A165080.P1852582017948634876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165088 (A032559 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165080.P1852582017948634876

/-! ## A165080.P1647032043218806677

`A057427(A165095(n+1))*A165082(A028310(n))`
-/

namespace A165080.P1647032043218806677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A165095 (n + 1)).toNat * A165082 (A028310 n).toNat

end

end A165080.P1647032043218806677

/-! ## A165080.P8768825426673117586

`record[A165088(A109035(3*n+2))]`
-/

namespace A165080.P8768825426673117586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165088 (A109035 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165080.P8768825426673117586

/-! ## A165080.P13202277975974657830

`∪[∑{e}[5^n, A165082(#)], A165082(n+1)]`
-/

namespace A165080.P13202277975974657830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A165082 (Nat.factorization (f2 n) p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A165080.P13202277975974657830

/-!
# A165082: Consider the base-7 Kaprekar map n->K(n) defined in A165071. Sequence gives least elements of each cycle of length > 1.

The programs for A165082, there is no canonical definition to state claims against.
-/

/-! ## A165082.P3309438672789408992

`∩[A165078(n+1), A165080(n+1)]`
-/

namespace A165082.P3309438672789408992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165082.P3309438672789408992

/-! ## A165082.P13323430756684630583

`A165080(A067340(n+1)%A327920(n+5))`
-/

namespace A165082.P13323430756684630583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (Int.tmod (A067340 (n + 1)) (A327920 (n + 5))).toNat

end

end A165082.P13323430756684630583

/-! ## A165082.P14143834971047093715

`record[root(A165080(n+2), A165045(n+1))]`
-/

namespace A165082.P14143834971047093715
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165080 (n + 2) : ℝ) ^ (1 / (A165045 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165082.P14143834971047093715

/-! ## A165082.P9177321938725939733

`A165080(n+2)^A151949(n)!`
-/

namespace A165082.P9177321938725939733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (n + 2) ^ Nat.factorial (A151949 n).toNat

end

end A165082.P9177321938725939733

/-! ## A165082.P4349491906452816825

`lcm(A165080(n+2), A356224((1-n)²+2*n))`
-/

namespace A165082.P4349491906452816825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165080 (n + 2)) (A356224 ((1 - (n : ℤ)) ^ 2 + (2 * n : ℤ)).toNat)

end

end A165082.P4349491906452816825

/-!
# A165088: Smallest member of cycle corresponding to n-th term of A165087.

The programs for A165088, there is no canonical definition to state claims against.
-/

/-! ## A165088.P16895054853037853811

`A165080(or(A032559(n+1), A328795(n)))`
-/

namespace A165088.P16895054853037853811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (Int.lor (A032559 (n + 1)) (A328795 n)).toNat

end

end A165088.P16895054853037853811

/-! ## A165088.P17215498784030864044

`A165080(A000005(5^n))`
-/

namespace A165088.P17215498784030864044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (A000005 (5 ^ n)).toNat

end

end A165088.P17215498784030864044

/-! ## A165088.P7581244239203443589

`A165080(A360373((n+1)²))`
-/

namespace A165088.P7581244239203443589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (A360373 ((n + 1) ^ 2)).toNat

end

end A165088.P7581244239203443589

/-! ## A165088.P6497551789351118499

`A165080(A032559(n+2)-1)`
-/

namespace A165088.P6497551789351118499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165080 (A032559 (n + 2) - 1).toNat

end

end A165088.P6497551789351118499

/-!
# A165090: a(n) is the image of n under the base-8 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165090, there is no canonical definition to state claims against.
-/

/-! ## A165090.P1586452332743588701

`A319725(n)-A319656(n)`
-/

namespace A165090.P1586452332743588701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n - A319656 n

end

end A165090.P1586452332743588701

/-! ## A165090.P12515345620464514105

`A319808(n)-2*A319656(n)`
-/

namespace A165090.P12515345620464514105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 n - 2 * A319656 n

end

end A165090.P12515345620464514105

/-! ## A165090.P11492593698541589387

`2*A319725(n)-A319808(n)`
-/

namespace A165090.P11492593698541589387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319725 n - A319808 n

end

end A165090.P11492593698541589387

/-! ## A165090.P16403265513774746214

`A055957(A319725(n))`
-/

namespace A165090.P16403265513774746214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 (A319725 n).toNat

end

end A165090.P16403265513774746214

/-! ## A165090.P16435425693947167048

`7*A165091(n)`
-/

namespace A165090.P16435425693947167048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A165091 n

end

end A165090.P16435425693947167048

/-! ## A165090.P2237430932162886265

`A008589(A165091(n))`
-/

namespace A165090.P2237430932162886265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A165091 n).toNat

end

end A165090.P2237430932162886265

/-! ## A165090.P18332926063841584682

`A016993(A165091(n))-A006257(A120880(n))`
-/

namespace A165090.P18332926063841584682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A165091 n).toNat - A006257 (A120880 n).toNat

end

end A165090.P18332926063841584682

/-! ## A165090.P11388993563399026592

`lcm((-1)^A187557(n+1), A055957(n))`
-/

namespace A165090.P11388993563399026592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A187557 (n + 1) : ℤ))) (A055957 n)

end

end A165090.P11388993563399026592

/-!
# A165091: a(n) = A165090(n)/7.

The programs for A165091, there is no canonical definition to state claims against.
-/

/-! ## A165091.P290913034119059571

`A165090(n)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165091.P290913034119059571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165090 n : ℚ) / 7

end

end A165091.P290913034119059571

/-! ## A165091.P13188851813876764506

`A055957(A319725(n))/7`
-/

namespace A165091.P13188851813876764506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055957 (A319725 n).toNat : ℚ) / 7

end

end A165091.P13188851813876764506

/-! ## A165091.P4095677098926789591

`A008617(2*A165090(n)+1)`
-/

namespace A165091.P4095677098926789591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * A165090 n + 1).toNat

end

end A165091.P4095677098926789591

/-! ## A165091.P8869257759123193678

`A008617(2*A165090(n))-1`
-/

namespace A165091.P8869257759123193678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * A165090 n).toNat - 1

end

end A165091.P8869257759123193678

/-! ## A165091.P1323554733951724760

`(A319725(n)-A319656(n))/7`
-/

namespace A165091.P1323554733951724760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319725 n - A319656 n : ℚ) / 7

end

end A165091.P1323554733951724760

/-! ## A165091.P18003503308760694856

`A008617(A165090(n)+A165090(n)+1)`
-/

namespace A165091.P18003503308760694856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A165090 n + (A165090 n + 1)).toNat

end

end A165091.P18003503308760694856

/-! ## A165091.P8685384090159661027

`A347689(record[A048379(A048379(n))])`
-/

namespace A165091.P8685384090159661027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A048379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165091.P8685384090159661027

/-! ## A165091.P10110778431362027465

`A037902(A263635(or(n, n+1))+n)`
-/

namespace A165091.P10110778431362027465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (A263635 (Nat.lor n (n + 1)) + (n : ℤ)).toNat

end

end A165091.P10110778431362027465

/-! ## A165091.P15178701554428296094

`and(A002223(n+1), A037902(n))`
-/

namespace A165091.P15178701554428296094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A037902 n)

end

end A165091.P15178701554428296094

/-! ## A165091.P5646724738430715266

`A064834(A171644(n))`
-/

namespace A165091.P5646724738430715266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A171644 n).toNat

end

end A165091.P5646724738430715266

/-!
# A165092: Length of preperiodic part of trajectory of n under iteration of the base-8 Kaprekar map in A165090.

The programs for A165092, there is no canonical definition to state claims against.
-/

/-! ## A165092.P7016084089721694882

`A165093(n)-A109671(A156260(3*n+4))`
-/

namespace A165092.P7016084089721694882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n - A109671 (A156260 (3 * n + 4)).toNat

end

end A165092.P7016084089721694882

/-! ## A165092.P2282979871485386706

`A165093(n)-A001065(A052085(2*n+3))`
-/

namespace A165092.P2282979871485386706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n - A001065 (A052085 (2 * n + 3)).toNat

end

end A165092.P2282979871485386706

/-! ## A165092.P196273567871136105

`A280193(A228057(n+1))+A165093(n)`
-/

namespace A165092.P196273567871136105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A228057 (n + 1)).toNat + A165093 n

end

end A165092.P196273567871136105

/-! ## A165092.P11800510485788224884

`A165093(n)-A009194(A077800(n+1))`
-/

namespace A165092.P11800510485788224884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n - A009194 (A077800 (n + 1)).toNat

end

end A165092.P11800510485788224884

/-! ## A165092.P14411114956656293545

`A165093(n)-A182850(A000040(3*n+2))`
-/

namespace A165092.P14411114956656293545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n - A182850 (A000040 (3 * n + 2)).toNat

end

end A165092.P14411114956656293545

/-! ## A165092.P13152028010387542387

`A165093(n)+A033999(A000040(3*n+4))`
-/

namespace A165092.P13152028010387542387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n + A033999 (A000040 (3 * n + 4)).toNat

end

end A165092.P13152028010387542387

/-! ## A165092.P16802477715644864000

`A165093(n)+A008836(A008578(3*n+5))`
-/

namespace A165092.P16802477715644864000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n + A008836 (A008578 (3 * n + 5)).toNat

end

end A165092.P16802477715644864000

/-! ## A165092.P11451248791241671497

`A165093(n)+A008836(A124598(3*n+4))`
-/

namespace A165092.P11451248791241671497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n + A008836 (A124598 (3 * n + 4)).toNat

end

end A165092.P11451248791241671497

/-! ## A165092.P15760475945826621424

`A165093(n)-A033630(A123929(3*n+5))`
-/

namespace A165092.P15760475945826621424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n - A033630 (A123929 (3 * n + 5)).toNat

end

end A165092.P15760475945826621424

/-! ## A165092.P514986237184284561

`A196305(n)%A165093(n)`
-/

namespace A165092.P514986237184284561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A165093 n)

end

end A165092.P514986237184284561

/-! ## A165092.P12368136302404129808

`A173875(n+1)%A165093(n)`
-/

namespace A165092.P12368136302404129808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173875 (n + 1)) (A165093 n)

end

end A165092.P12368136302404129808

/-! ## A165092.P15599243433604498580

`A165093(n)+A107393(A151800(n²))`
-/

namespace A165092.P15599243433604498580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n + A107393 (A151800 (n ^ 2)).toNat

end

end A165092.P15599243433604498580

/-! ## A165092.P7486041947286379739

`A083800(n+1)%A165093(n)`
-/

namespace A165092.P7486041947286379739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A165093 n)

end

end A165092.P7486041947286379739

/-! ## A165092.P9609889745222409839

`A070198(n)%A165093(n)`
-/

namespace A165092.P9609889745222409839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A165093 n)

end

end A165092.P9609889745222409839

/-! ## A165092.P1001740377286498892

`A079782(n+1)%A165093(n)`
-/

namespace A165092.P1001740377286498892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A165093 n)

end

end A165092.P1001740377286498892

/-! ## A165092.P15283373895499833050

`A083685(n+1)%A165093(n)`
-/

namespace A165092.P15283373895499833050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A165093 n)

end

end A165092.P15283373895499833050

/-! ## A165092.P17655821330143061174

`A121934(n+1)%A165093(n)`
-/

namespace A165092.P17655821330143061174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A165093 n)

end

end A165092.P17655821330143061174

/-! ## A165092.P6378010898628750951

`A319047(A165093(n)+A000096(n))`
-/

namespace A165092.P6378010898628750951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A165093 n + A000096 n).toNat

end

end A165092.P6378010898628750951

/-! ## A165092.P12631020043388387737

`A030494(n+1)%A165093(n)`
-/

namespace A165092.P12631020043388387737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A165093 n)

end

end A165092.P12631020043388387737

/-! ## A165092.P16412896681842782608

`A072828(n+1)%A165093(n)`
-/

namespace A165092.P16412896681842782608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A165093 n)

end

end A165092.P16412896681842782608

/-!
# A165093: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-8 Kaprekar map in A165090.

The programs for A165093, there is no canonical definition to state claims against.
-/

/-! ## A165093.P8066866458160352960

`A165092(n)+A033676(A106856(n+1))`
-/

namespace A165093.P8066866458160352960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A033676 (A106856 (n + 1)).toNat

end

end A165093.P8066866458160352960

/-! ## A165093.P16921869866800753542

`A165092(n)+A001222(A127042(3*n+4))`
-/

namespace A165093.P16921869866800753542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A001222 (A127042 (3 * n + 4)).toNat

end

end A165093.P16921869866800753542

/-! ## A165093.P16795247083327683419

`A165092(n)+A001222(A141908(n+1))`
-/

namespace A165093.P16795247083327683419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A001222 (A141908 (n + 1)).toNat

end

end A165093.P16795247083327683419

/-! ## A165093.P8403418131980907251

`A165092(n)+A001221(A100201(n+1))`
-/

namespace A165093.P8403418131980907251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A001221 (A100201 (n + 1)).toNat

end

end A165093.P8403418131980907251

/-! ## A165093.P5650168703859967986

`A165092(n)+A006519(A350052(n))`
-/

namespace A165093.P5650168703859967986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A006519 (A350052 n).toNat

end

end A165093.P5650168703859967986

/-! ## A165093.P11395973110735642173

`A165092(n)+A006519(A343099(3*(n+1)))`
-/

namespace A165093.P11395973110735642173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A006519 (A343099 (3 * (n + 1))).toNat

end

end A165093.P11395973110735642173

/-! ## A165093.P5255456693997747553

`A165092(n)+A001065(A000040(3*(n+1)))`
-/

namespace A165093.P5255456693997747553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A001065 (A000040 (3 * (n + 1))).toNat

end

end A165093.P5255456693997747553

/-! ## A165093.P11665409000631754467

`A165092(n)+A001222(A107190(3*n+1))`
-/

namespace A165093.P11665409000631754467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A001222 (A107190 (3 * n + 1)).toNat

end

end A165093.P11665409000631754467

/-! ## A165093.P4925989385683337611

`A165092(n)+A001222(A107208(2*(n+2)))`
-/

namespace A165093.P4925989385683337611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A001222 (A107208 (2 * (n + 2))).toNat

end

end A165093.P4925989385683337611

/-! ## A165093.P14734372349567658673

`A165092(n)+A001222(A107194(3*n+4))`
-/

namespace A165093.P14734372349567658673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A001222 (A107194 (3 * n + 4)).toNat

end

end A165093.P14734372349567658673

/-! ## A165093.P5146226699590279794

`A008732(and(2^n-1, A165092(n)))`
-/

namespace A165093.P5146226699590279794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (Int.land ((2 ^ n : ℤ) - 1) (A165092 n)).toNat

end

end A165093.P5146226699590279794

/-! ## A165093.P6388246699517080698

`A165092(n)+A020639(n²+1)²%3`
-/

namespace A165093.P6388246699517080698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + Int.tmod (A020639 (n ^ 2 + 1) ^ 2) 3

end

end A165093.P6388246699517080698

/-! ## A165093.P15621176350777941039

`A165092(n)+A000041(A052409(n²+1))`
-/

namespace A165093.P15621176350777941039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A000041 (A052409 (n ^ 2 + 1)).toNat

end

end A165093.P15621176350777941039

/-! ## A165093.P9091910319706574723

`A165092(n)+A052409((n+1)²+1)`
-/

namespace A165093.P9091910319706574723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A052409 ((n + 1) ^ 2 + 1)

end

end A165093.P9091910319706574723

/-! ## A165093.P10701498223391091040

`A257680(A000523(n+1)!)+A165092(n)`
-/

namespace A165093.P10701498223391091040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (Nat.factorial (A000523 (n + 1)).toNat) + A165092 n

end

end A165093.P10701498223391091040

/-! ## A165093.P3907761031702783537

`A165092(n)^A127013(∑[n+1]+1)+1`
-/

namespace A165093.P3907761031702783537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165092 n : ℚ) ^ (A127013 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) + 1

end

end A165093.P3907761031702783537

/-! ## A165093.P15408598075111702435

`A165092(n)+A165092(A284002(n))`
-/

namespace A165093.P15408598075111702435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 n + A165092 (A284002 n).toNat

end

end A165093.P15408598075111702435

/-!
# A165094: Fixed points of the base-8 Kaprekar map A165090.

The programs for A165094, there is no canonical definition to state claims against.
-/

/-! ## A165094.P9563160723616165705

`A165095(eq[1, A165096(n+1)]+1)`
-/

namespace A165094.P9563160723616165705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A165094.P9563160723616165705

/-! ## A165094.P12390010116040706095

`A165099(record[(n+1)/A165100(n+1)])`
-/

namespace A165094.P12390010116040706095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165100 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165099 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165094.P12390010116040706095

/-! ## A165094.P17509685459978238239

`record[(2-A165100(n+1))*A165099(n+1)]`
-/

namespace A165094.P17509685459978238239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165100 (n + 1)) * A165099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165094.P17509685459978238239

/-!
# A165095: Consider the base-8 Kaprekar map n->K(n) defined in A165090. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165095, there is no canonical definition to state claims against.
-/

/-! ## A165095.P2921255776737321354

`∪[A002266(5*A165099(n+1)), A165097(n+1)]`
-/

namespace A165095.P2921255776737321354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (5 * A165099 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165095.P2921255776737321354

/-! ## A165095.P2693468151608821107

`∪[A165097(n+1), A165099(n+1)*A165263(3*n+5)]`
-/

namespace A165095.P2693468151608821107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165099 (n + 1) * A165263 (3 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165095.P2693468151608821107

/-! ## A165095.P7850823323406183849

`∪[A165097(n+1), A030346((n+8)*8^(n-1)+2)*A165099(n+1)]`
-/

namespace A165095.P7850823323406183849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030346 (SequenceMachineLib.roundAway ((n + 8 : ℚ) * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2)).toNat * A165099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165095.P7850823323406183849

/-!
# A165097: Consider the base-8 Kaprekar map n->K(n) defined in A165090. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165097, there is no canonical definition to state claims against.
-/

/-! ## A165097.P3638632876065734201

`A165095(A187829(n+1)+3)`
-/

namespace A165097.P3638632876065734201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165095 (A187829 (n + 1) + 3).toNat

end

end A165097.P3638632876065734201

/-! ## A165097.P12965813788692560526

`A165095(n+4)^A288683(n)!`
-/

namespace A165097.P12965813788692560526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165095 (n + 4) ^ Nat.factorial (A288683 n).toNat

end

end A165097.P12965813788692560526

/-! ## A165097.P1403627738299240845

`C(A165095(n+4), ∑[A106433(n)])`
-/

namespace A165097.P1403627738299240845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165095 (n + 4)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165097.P1403627738299240845

/-! ## A165097.P9795197033967241801

`A277322(2^n)+A165095(n+4)`
-/

namespace A165097.P9795197033967241801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (2 ^ n) + A165095 (n + 4)

end

end A165097.P9795197033967241801

/-! ## A165097.P4847427369036568941

`A165095(n+4)%A218416(comp[∑[n]])`
-/

namespace A165097.P4847427369036568941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165095 (n + 4)) (A218416 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A165097.P4847427369036568941

/-!
# A165098: Length of cycle mentioned in A165097.

The programs for A165098, there is no canonical definition to state claims against.
-/

/-! ## A165098.P6470768968608424578

`A165096(lt[1, A165096(n+1)]+1)`
-/

namespace A165098.P6470768968608424578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165098.P6470768968608424578

/-! ## A165098.P14988437289700742729

`filter[A165096(n+3), A164980(#)]`
-/

namespace A165098.P14988437289700742729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (f1 j).toNat = 1) n)

end

end A165098.P14988437289700742729

/-! ## A165098.P10217321277431857607

`filter[A165096(n+3), A252372(#)]`
-/

namespace A165098.P10217321277431857607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A165098.P10217321277431857607

/-! ## A165098.P10394336767724653384

`A165096(A246337(n+1)+3)`
-/

namespace A165098.P10394336767724653384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (A246337 (n + 1) + 3).toNat

end

end A165098.P10394336767724653384

/-! ## A165098.P10058389224824361630

`A165096(A187829(n+1)+3)`
-/

namespace A165098.P10058389224824361630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165096 (A187829 (n + 1) + 3).toNat

end

end A165098.P10058389224824361630

/-!
# A165099: Consider the base-8 Kaprekar map n->K(n) defined in A165090. Sequence gives least elements of each cycle, including fixed points.

The programs for A165099, there is no canonical definition to state claims against.
-/

/-! ## A165099.P6095644486864663612

`A165108(A072062(n+1)%A352233(2*(n+2)))`
-/

namespace A165099.P6095644486864663612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165108 (Int.tmod (A072062 (n + 1)) (A352233 (2 * (n + 2)))).toNat

end

end A165099.P6095644486864663612

/-! ## A165099.P11729632650047740885

`A165095(A377272(n+1))`
-/

namespace A165099.P11729632650047740885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165095 (A377272 (n + 1)).toNat

end

end A165099.P11729632650047740885

