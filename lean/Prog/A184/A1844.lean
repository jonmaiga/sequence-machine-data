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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C026

/-!
# A184400: Ranks of (odd i)+(even j)*r, when all i+j*r are ranked; r=sqrt(2), i>=0, j>=0.

The programs for A184400, there is no canonical definition to state claims against.
-/

/-! ## A184400.P312912117777727262

`A184399(n+1)-(A276571(A184401(n+1))+1)`
-/

namespace A184400.P312912117777727262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184399 (n + 1) - (A276571 (A184401 (n + 1)).toNat + 1)

end

end A184400.P312912117777727262

/-! ## A184400.P7211278573470051049

`A233583(A184399(n+1))-A276571(A184401(n+1))`
-/

namespace A184400.P7211278573470051049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A184399 (n + 1)).toNat - A276571 (A184401 (n + 1)).toNat

end

end A184400.P7211278573470051049

/-! ## A184400.P15994816692407504360

`A184397(A184398(n+1))`
-/

namespace A184400.P15994816692407504360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (A184398 (n + 1)).toNat

end

end A184400.P15994816692407504360

/-! ## A184400.P14639257453857654960

`A184397(lt[2, A184403(n+1)]+1)`
-/

namespace A184400.P14639257453857654960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A184400.P14639257453857654960

/-! ## A184400.P3650184364079395

`A184397(comp[A184397(n+1)-1]+1)`
-/

namespace A184400.P3650184364079395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184397 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A184400.P3650184364079395

/-!
# A184401: Ranks of (even i)+(odd j)*r, when all i+j*r are ranked; r=sqrt(2), i>=0, j>=0.

The programs for A184401, there is no canonical definition to state claims against.
-/

/-! ## A184401.P5760396869588137242

`A184410(eq[1, A023131(n+1)%2]+1)`
-/

namespace A184401.P5760396869588137242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023131 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184401.P5760396869588137242

/-! ## A184401.P12258553365959053217

`record[A184410(n+1)/A001511(A023131(n+1))]`
-/

namespace A184401.P12258553365959053217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184410 (n + 1) : ℚ) / (A001511 (A023131 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184401.P12258553365959053217

/-! ## A184401.P2700603786570735611

`A184398(A184397(n+1))`
-/

namespace A184401.P2700603786570735611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (A184397 (n + 1)).toNat

end

end A184401.P2700603786570735611

/-! ## A184401.P4565946893550667194

`A184398(lt[A184403(n+1), 3]+1)`
-/

namespace A184401.P4565946893550667194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184403 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A184401.P4565946893550667194

/-! ## A184401.P6101552956625323438

`A184398(lt[0, A025648(n+1)%2]+1)`
-/

namespace A184401.P6101552956625323438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025648 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A184401.P6101552956625323438

/-!
# A184402: Ranks of (even i)+(even j)*r, when all i+j*r are ranked; r=sqrt(2), i>=0, j>=0.

The programs for A184402, there is no canonical definition to state claims against.
-/

/-! ## A184402.P18231085692141252920

`A184401(n+1)-A276571(A184401(n+1))`
-/

namespace A184402.P18231085692141252920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184401 (n + 1) - A276571 (A184401 (n + 1)).toNat

end

end A184402.P18231085692141252920

/-! ## A184402.P11280951837582692701

`A184398(A184398(n+1))`
-/

namespace A184402.P11280951837582692701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (A184398 (n + 1)).toNat

end

end A184402.P11280951837582692701

/-! ## A184402.P4380899627642245418

`record[A184398(A184398(A020986(n)))]`
-/

namespace A184402.P4380899627642245418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (A184398 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184402.P4380899627642245418

/-! ## A184402.P2342020907644216955

`record[A184398(A184398(A065648(n)))]`
-/

namespace A184402.P2342020907644216955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (A184398 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184402.P2342020907644216955

/-! ## A184402.P2882097358220916797

`record[A184398(A184398(A106466(n)))]`
-/

namespace A184402.P2882097358220916797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (A184398 (A106466 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184402.P2882097358220916797

/-!
# A184403: "Types" (parities of i and j) when all the numbers i+j*r are ranked, where r=sqrt(2), i>=0, j>=0.

The programs for A184403, there is no canonical definition to state claims against.
-/

/-! ## A184403.P16836494056047864411

`5-A002828(A003593(n+1))`
-/

namespace A184403.P16836494056047864411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A002828 (A003593 (n + 1)).toNat

end

end A184403.P16836494056047864411

/-! ## A184403.P17383630577133697200

`A002828(A033849(n+1))`
-/

namespace A184403.P17383630577133697200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A033849 (n + 1)).toNat

end

end A184403.P17383630577133697200

/-! ## A184403.P14257269642828464528

`A002828(15*A003593(n+1))`
-/

namespace A184403.P14257269642828464528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (15 * A003593 (n + 1)).toNat

end

end A184403.P14257269642828464528

/-! ## A184403.P8266943649614520200

`A158459(ceil(A003598(n+1)/2))+1`
-/

namespace A184403.P8266943649614520200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 ⌈(A003598 (n + 1) : ℚ) / 2⌉.toNat + 1

end

end A184403.P8266943649614520200

/-! ## A184403.P11898153890001477665

`A227781(A033849(n+1)+1)`
-/

namespace A184403.P11898153890001477665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (A033849 (n + 1) + 1).toNat

end

end A184403.P11898153890001477665

/-!
# A184404: 1/6 the number of (n+2)X3 0..2 arrays with each 3X3 subblock containing two of one value, three of another, and four of the last.

The programs for A184404, there is no canonical definition to state claims against.
-/

/-! ## A184404.P15153970097406665658

`A184407(∑[n]+1)`
-/

namespace A184404.P15153970097406665658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184404.P15153970097406665658

/-! ## A184404.P14755711063418114077

`lcm(3, A184407(A000124(n)))`
-/

namespace A184404.P14755711063418114077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184407 (A000124 n).toNat)

end

end A184404.P14755711063418114077

/-! ## A184404.P2473566949181264642

`record[A184407(A056536(n+1))]`
-/

namespace A184404.P2473566949181264642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184404.P2473566949181264642

/-! ## A184404.P17000795599384923464

`record[A184407(A114091(n+1))]`
-/

namespace A184404.P17000795599384923464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184404.P17000795599384923464

/-!
# A184405: 1/6 the number of (n+2)X4 0..2 arrays with each 3X3 subblock containing two of one value, three of another, and four of the last.

The programs for A184405, there is no canonical definition to state claims against.
-/

/-! ## A184405.P4306844713618288780

`A184407(∑[n+1]+2)`
-/

namespace A184405.P4306844713618288780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184405.P4306844713618288780

/-! ## A184405.P4259027737980545658

`record[A184407(A056536(n+1)+1)]`
-/

namespace A184405.P4259027737980545658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184405.P4259027737980545658

/-! ## A184405.P699524987456502225

`record[A184407(A114091(n+1)+1)]`
-/

namespace A184405.P699524987456502225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184405.P699524987456502225

/-!
# A184406: 1/6 the number of (n+2)X5 0..2 arrays with each 3X3 subblock containing two of one value, three of another, and four of the last.

The programs for A184406, there is no canonical definition to state claims against.
-/

/-! ## A184406.P8444414108769923964

`A184407(∑[n+2]+4)`
-/

namespace A184406.P8444414108769923964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184406.P8444414108769923964

/-! ## A184406.P13503481790122754994

`record[A184407(A184414(2*(n+1)))]`
-/

namespace A184406.P13503481790122754994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184407 (A184414 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184406.P13503481790122754994

/-!
# A184410: Ranks of (odd i)+j/r when all i+j/r are ranked; r=sqrt(2), i>=0, j>=0. Complement of A184411.

The programs for A184410, there is no canonical definition to state claims against.
-/

/-! ## A184410.P10910828758301327581

`eq[0, A023115(n+1)%2]+1`
-/

namespace A184410.P10910828758301327581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184410.P10910828758301327581

/-! ## A184410.P16519304234667080948

`lt[0, A025666(n+1)%2]+1`
-/

namespace A184410.P16519304234667080948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025666 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A184410.P16519304234667080948

/-! ## A184410.P1111249855046296803

`eq[1, gcd(2, A025666(n+2))]+2`
-/

namespace A184410.P1111249855046296803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025666 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A184410.P1111249855046296803

/-! ## A184410.P8308234880428412416

`eq[1, A025666(n+3)%2]+3`
-/

namespace A184410.P8308234880428412416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025666 (n + 3)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A184410.P8308234880428412416

/-! ## A184410.P188136612477398116

`lt[A023115(abs(1-n)+1)%2, 1]`
-/

namespace A184410.P188136612477398116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (|1 - (n : ℤ)| + 1).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A184410.P188136612477398116

/-! ## A184410.P2143736005428303195

`eq[0, A023115(A028310(n))%2]`
-/

namespace A184410.P2143736005428303195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184410.P2143736005428303195

/-! ## A184410.P2667005110694403061

`eq[2, A020639(A023115(n+1))]+1`
-/

namespace A184410.P2667005110694403061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A023115 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184410.P2667005110694403061

/-! ## A184410.P8750828837635109304

`eq[1, A075180(A023115(n+2))]+2`
-/

namespace A184410.P8750828837635109304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (A023115 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A184410.P8750828837635109304

/-! ## A184410.P838115912537559318

`∪[A184399(n+1), A184401(n+1)]`
-/

namespace A184410.P838115912537559318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184410.P838115912537559318

/-!
# A184411: Ranks of (even i)+j/r when all i+j/r are ranked; r=sqrt(2), i>=0, j>=0. Complement of A184410.

The programs for A184411, there is no canonical definition to state claims against.
-/

/-! ## A184411.P15927802955181504050

`comp[A184410(n+1)-1]+1`
-/

namespace A184411.P15927802955181504050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184410 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184411.P15927802955181504050

/-! ## A184411.P17335899364501155638

`eq[0, A025666(n+1)%2]+1`
-/

namespace A184411.P17335899364501155638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025666 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184411.P17335899364501155638

/-! ## A184411.P11008365474646909958

`lt[0, A023115(n+1)%2]+1`
-/

namespace A184411.P11008365474646909958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A184411.P11008365474646909958

/-! ## A184411.P5592185181112859945

`eq[1, A023115(-xor(n, -1))%2]+1`
-/

namespace A184411.P5592185181112859945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (-Int.xor (n : ℤ) (-1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184411.P5592185181112859945

/-! ## A184411.P13200986038198582773

`eq[1, A023115(n%(n+1)+1)%2]+1`
-/

namespace A184411.P13200986038198582773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (n % (n + 1) + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184411.P13200986038198582773

/-! ## A184411.P3237817856868468925

`comp[A023443(A184410(n+1))]+1`
-/

namespace A184411.P3237817856868468925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184410 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184411.P3237817856868468925

/-! ## A184411.P4736720643202641101

`eq[1, A000035(A023115(n+1))]+1`
-/

namespace A184411.P4736720643202641101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A023115 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184411.P4736720643202641101

/-! ## A184411.P1088241037072083157

`eq[1, A028920(A025666(n+1))]+1`
-/

namespace A184411.P1088241037072083157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A025666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184411.P1088241037072083157

/-! ## A184411.P12769764871567382116

`∪[A184400(n+1), A184402(n+1)]`
-/

namespace A184411.P12769764871567382116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184411.P12769764871567382116

/-! ## A184411.P13396282501699493339

`eq[1, gcd(2, A025666(n+1)+A000040(n+3))]+1`
-/

namespace A184411.P13396282501699493339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025666 (n + 1) + A000040 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A184411.P13396282501699493339

/-!
# A184412: "Types" (parities of i and j) when all the numbers i+j/r are ranked, where r=sqrt(2), i>=0, j>=0.

The programs for A184412, there is no canonical definition to state claims against.
-/

/-! ## A184412.P13419624645911079440

`A184403(A074816(A160353(n+1))-A184403(n+1))`
-/

namespace A184412.P13419624645911079440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184403 (A074816 (A160353 (n + 1)).toNat - A184403 (n + 1)).toNat

end

end A184412.P13419624645911079440

/-! ## A184412.P15908830544356968046

`(A000217(A003593(n+1)+11)-11)%4+1`
-/

namespace A184412.P15908830544356968046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A003593 (n + 1) + 11).toNat - 11) 4 + 1

end

end A184412.P15908830544356968046

/-! ## A184412.P8045190341431239407

`A110549(A003593(n+1)+1)`
-/

namespace A184412.P8045190341431239407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110549 (A003593 (n + 1) + 1).toNat

end

end A184412.P8045190341431239407

/-! ## A184412.P14986775238482017570

`A105198(A003593(n+1)+1)+1`
-/

namespace A184412.P14986775238482017570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105198 (A003593 (n + 1) + 1).toNat + 1

end

end A184412.P14986775238482017570

/-! ## A184412.P2367759534120960778

`ceil(A007913(A033849(n+1))²^(1/2)²)`
-/

namespace A184412.P2367759534120960778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007913 (A033849 (n + 1)).toNat ^ 2 : ℝ) ^ (((1 : ℚ) / 2) ^ 2 : ℝ)⌉

end

end A184412.P2367759534120960778

/-!
# A184413: Lower s(n)-Wythoff sequence, where s(n)=floor[(n+1)/2]; complement of A184414.

The programs for A184413, there is no canonical definition to state claims against.
-/

/-! ## A184413.P3533013636292008050

`comp[A184414(n+1)-1]+1`
-/

namespace A184413.P3533013636292008050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184413.P3533013636292008050

/-! ## A184413.P929702005970740776

`A184414(n+1)-A008619(n)`
-/

namespace A184413.P929702005970740776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - A008619 n

end

end A184413.P929702005970740776

/-! ## A184413.P77721069914239865

`A184414(n+1)-∑[A059841(n)]`
-/

namespace A184413.P77721069914239865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184413.P77721069914239865

/-! ## A184413.P12110213402435075464

`comp[∪[A184414(n+1), A215774(n)]]`
-/

namespace A184413.P12110213402435075464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215774 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184413.P12110213402435075464

/-! ## A184413.P5970018989000744449

`A184414(n+1)-(A004526(n)+1)`
-/

namespace A184413.P5970018989000744449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - (A004526 n + 1)

end

end A184413.P5970018989000744449

/-! ## A184413.P1021487251184832440

`A184414(n+1)-A065033(n+1)`
-/

namespace A184413.P1021487251184832440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - A065033 (n + 1)

end

end A184413.P1021487251184832440

/-! ## A184413.P7884428954587854700

`A184414(n+1)-A008621(2*n)`
-/

namespace A184413.P7884428954587854700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - A008621 (2 * n)

end

end A184413.P7884428954587854700

/-! ## A184413.P8008421101895755930

`A184414(n+1)-A008624(2*n)`
-/

namespace A184413.P8008421101895755930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (n + 1) - A008624 (2 * n)

end

end A184413.P8008421101895755930

/-! ## A184413.P9345158066720094671

`record[A184414(A065033(n))-A008621(n)]`
-/

namespace A184413.P9345158066720094671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184414 (A065033 n).toNat - A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184413.P9345158066720094671

/-!
# A184414: Upper s(n)-Wythoff sequence, where s(n)=floor[(n+1)/2].

The programs for A184414, there is no canonical definition to state claims against.
-/

/-! ## A184414.P3859363900111683473

`A184413(n+1)+∑[log2(gcd(2, n))]`
-/

namespace A184414.P3859363900111683473
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184413 (n + 1) : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184414.P3859363900111683473

/-! ## A184414.P39022959404145075

`A184413(n+1)+A008619(n)`
-/

namespace A184414.P39022959404145075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + A008619 n

end

end A184414.P39022959404145075

/-! ## A184414.P9631904588850527941

`A184413(n+1)+∑[A059841(n)]`
-/

namespace A184414.P9631904588850527941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184414.P9631904588850527941

/-! ## A184414.P5876253488871006884

`A184413(n+1)+A004526(n)+1`
-/

namespace A184414.P5876253488871006884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + (A004526 n + 1)

end

end A184414.P5876253488871006884

/-! ## A184414.P9458633257536394312

`A184413(n+1)+A065033(n+1)`
-/

namespace A184414.P9458633257536394312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + A065033 (n + 1)

end

end A184414.P9458633257536394312

/-! ## A184414.P7733001636525375214

`A184413(n+1)+sqrt(A008794(n))+1`
-/

namespace A184414.P7733001636525375214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184413 (n + 1) : ℝ) + (Real.sqrt (A008794 n : ℝ) + 1)

end

end A184414.P7733001636525375214

/-! ## A184414.P8100882669357155593

`A184413(n+1)+n+2-A080513(n)`
-/

namespace A184414.P8100882669357155593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + (n + 2 : ℤ) - A080513 n

end

end A184414.P8100882669357155593

/-! ## A184414.P8415170512647376138

`A184413(n+1)+∑[A000045(a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A184414.P8415170512647376138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000045 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184414.P8415170512647376138

/-! ## A184414.P11920780821304532565

`A102528(n+2)+A004526(n)`
-/

namespace A184414.P11920780821304532565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102528 (n + 2) + A004526 n

end

end A184414.P11920780821304532565

/-! ## A184414.P2773096914556772506

`A065033(n+1)+A102528(n+2)-1`
-/

namespace A184414.P2773096914556772506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + (A102528 (n + 2) - 1)

end

end A184414.P2773096914556772506

/-!
# A184415: Lower s(n)-Wythoff sequence, where s(n)=floor[(n+2)/3]. Complement of A184416.

The programs for A184415, there is no canonical definition to state claims against.
-/

/-! ## A184415.P3998744582976438792

`comp[A184416(n+1)-1]+1`
-/

namespace A184415.P3998744582976438792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184415.P3998744582976438792

/-! ## A184415.P16360573527477408075

`A184416(n+1)-A008620(n)`
-/

namespace A184415.P16360573527477408075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - A008620 n

end

end A184415.P16360573527477408075

/-! ## A184415.P982058732256074157

`A184416(n+1)-∑[A079978(n)]`
-/

namespace A184415.P982058732256074157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184415.P982058732256074157

/-! ## A184415.P3825067024690987618

`A184416(n+1)-Δ[A001840(n)]`
-/

namespace A184415.P3825067024690987618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - (f1 (n + 1) - f1 n)

end

end A184415.P3825067024690987618

/-! ## A184415.P3350890294931598047

`A184416(n+1)-(A002264(n)+1)`
-/

namespace A184415.P3350890294931598047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - (A002264 n + 1)

end

end A184415.P3350890294931598047

/-! ## A184415.P1128024824655558670

`A184416(n+1)-A103221(2*n)`
-/

namespace A184415.P1128024824655558670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - A103221 (2 * n)

end

end A184415.P1128024824655558670

/-! ## A184415.P15916339641154969535

`A023443(A184416(n+1)-floor(n/3))`
-/

namespace A184415.P15916339641154969535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184416 (n + 1) - ⌊(n : ℚ) / 3⌋).toNat

end

end A184415.P15916339641154969535

/-! ## A184415.P10038785677740253561

`A184416(n+1)-∑[A048577(n)%2]`
-/

namespace A184415.P10038785677740253561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048577 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184415.P10038785677740253561

/-! ## A184415.P15010744387999500439

`A184416(n+1)-A008615(2*(n+1))`
-/

namespace A184415.P15010744387999500439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - A008615 (2 * (n + 1))

end

end A184415.P15010744387999500439

/-! ## A184415.P8668298381122351716

`A184416(n+1)-A008619(A004396(n))`
-/

namespace A184415.P8668298381122351716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - A008619 (A004396 n).toNat

end

end A184415.P8668298381122351716

/-! ## A184415.P7465030306199053187

`A184416(n+1)-A008619(A004523(n))`
-/

namespace A184415.P7465030306199053187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - A008619 (A004523 n).toNat

end

end A184415.P7465030306199053187

/-! ## A184415.P6000086425992400637

`A184416(n+1)-A227568(A001399(n))`
-/

namespace A184415.P6000086425992400637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1) - A227568 (A001399 n).toNat

end

end A184415.P6000086425992400637

/-!
# A184416: Upper s(n)-Wythoff sequence, where s(n)=floor[(n+2)/3]. Complement of A184415.

The programs for A184416, there is no canonical definition to state claims against.
-/

/-! ## A184416.P9231200777823456084

`A184415(n+1)+∑[char[3*n]]`
-/

namespace A184416.P9231200777823456084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A184416.P9231200777823456084

/-! ## A184416.P17004724170985432924

`A184415(C(n+1, n))+floor(n/3)+1`
-/

namespace A184416.P17004724170985432924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (Nat.choose (n + 1) n) + ⌊(n : ℚ) / 3⌋ + 1

end

end A184416.P17004724170985432924

/-! ## A184416.P17820692928898907351

`A184415(2*n+1-n)+floor(n/3)+1`
-/

namespace A184416.P17820692928898907351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (2 * n + 1 - n) + ⌊(n : ℚ) / 3⌋ + 1

end

end A184416.P17820692928898907351

/-! ## A184416.P8635586755570256856

`A002264(n)+A184415(n+1)+1`
-/

namespace A184416.P8635586755570256856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + (A184415 (n + 1) + 1)

end

end A184416.P8635586755570256856

/-! ## A184416.P2933387011665479538

`A020725(A184415(n+1)+floor(n/3))`
-/

namespace A184416.P2933387011665479538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A184415 (n + 1) + ⌊(n : ℚ) / 3⌋).toNat

end

end A184416.P2933387011665479538

/-! ## A184416.P7241141807674784053

`A260160(2*n+5)+A184415(n+1)`
-/

namespace A184416.P7241141807674784053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (2 * n + 5) + A184415 (n + 1)

end

end A184416.P7241141807674784053

/-! ## A184416.P9638638785905170535

`(A184415(n+1)+A008620(n))*gcd(n, n+1)`
-/

namespace A184416.P9638638785905170535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184415 (n + 1) + A008620 n) * (Nat.gcd n (n + 1) : ℤ)

end

end A184416.P9638638785905170535

/-! ## A184416.P15763839110884172319

`A000027(A184415(n+1)+A008620(n))`
-/

namespace A184416.P15763839110884172319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A184415 (n + 1) + A008620 n).toNat

end

end A184416.P15763839110884172319

/-! ## A184416.P13944811803127884304

`A020725(A184415(n+1))+A002264(n)`
-/

namespace A184416.P13944811803127884304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A184415 (n + 1)).toNat + A002264 n

end

end A184416.P13944811803127884304

/-! ## A184416.P15384072859132374509

`A227568(A001399(n))+A184415(n+1)`
-/

namespace A184416.P15384072859132374509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A001399 n).toNat + A184415 (n + 1)

end

end A184416.P15384072859132374509

/-!
# A184417: p^2 + (p+2)^2 - 1 where (p,p+2) is the n-th twin prime pair.

The programs for A184417, the canonical program `A184417.P16121788187254490956` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184417 has offset 1).

The definition of A184417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063533, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A184417.P16121788187254490956

`A063533(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A184417

/-- `A063533(n+1)-1` -/
def P16121788187254490956.Spec : Prop :=
  ∀ n, P16121788187254490956.a n = A184417 (n + 1)

theorem P16121788187254490956.correct : P16121788187254490956.Spec := by
  intro n
  simp only [A184417, Nat.add_sub_cancel]

end A184417

/-! ## A184417.P5330014698794275770

`A071142(n+1)+3`
-/

namespace A184417.P5330014698794275770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071142 (n + 1) + 3

end

end A184417.P5330014698794275770

namespace A184417

/-- `A071142(n+1)+3` -/
def P5330014698794275770.Spec : Prop :=
  ∀ n, P5330014698794275770.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P15277815382505065538

`2*A075369(n+1)+1`
-/

namespace A184417.P15277815382505065538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075369 (n + 1) + 1

end

end A184417.P15277815382505065538

namespace A184417

/-- `2*A075369(n+1)+1` -/
def P15277815382505065538.Spec : Prop :=
  ∀ n, P15277815382505065538.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P12023628807078261875

`2*A037074(n+1)+3`
-/

namespace A184417.P12023628807078261875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037074 (n + 1) + 3

end

end A184417.P12023628807078261875

namespace A184417

/-- `2*A037074(n+1)+3` -/
def P12023628807078261875.Spec : Prop :=
  ∀ n, P12023628807078261875.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P12607736282872618404

`2*A120875(n+1)+5`
-/

namespace A184417.P12607736282872618404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120875 (n + 1) + 5

end

end A184417.P12607736282872618404

namespace A184417

/-- `2*A120875(n+1)+5` -/
def P12607736282872618404.Spec : Prop :=
  ∀ n, P12607736282872618404.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P10191000285799232493

`4*A120876(n+1)+5`
-/

namespace A184417.P10191000285799232493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A120876 (n + 1) + 5

end

end A184417.P10191000285799232493

namespace A184417

/-- `4*A120876(n+1)+5` -/
def P10191000285799232493.Spec : Prop :=
  ∀ n, P10191000285799232493.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P472520829302030497

`A362941(n+1)+A001359(n+1)²`
-/

namespace A184417.P472520829302030497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) + A001359 (n + 1) ^ 2

end

end A184417.P472520829302030497

namespace A184417

/-- `A362941(n+1)+A001359(n+1)²` -/
def P472520829302030497.Spec : Prop :=
  ∀ n, P472520829302030497.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P6325919464509209099

`A014574(n+1)*A054735(n+1)+1`
-/

namespace A184417.P6325919464509209099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) * A054735 (n + 1) + 1

end

end A184417.P6325919464509209099

namespace A184417

/-- `A014574(n+1)*A054735(n+1)+1` -/
def P6325919464509209099.Spec : Prop :=
  ∀ n, P6325919464509209099.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P9824454415024704612

`A040040(n+1)*A111046(n+1)+1`
-/

namespace A184417.P9824454415024704612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) * A111046 (n + 1) + 1

end

end A184417.P9824454415024704612

namespace A184417

/-- `A040040(n+1)*A111046(n+1)+1` -/
def P9824454415024704612.Spec : Prop :=
  ∀ n, P9824454415024704612.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P17354707720382053932

`A108604(n+1)+A362941(n+1)-A111046(n+1)`
-/

namespace A184417.P17354707720382053932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) + (A362941 (n + 1) - A111046 (n + 1))

end

end A184417.P17354707720382053932

namespace A184417

/-- `A108604(n+1)+A362941(n+1)-A111046(n+1)` -/
def P17354707720382053932.Spec : Prop :=
  ∀ n, P17354707720382053932.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P9828979537033570579

`A006512(n+1)*A054735(n+1)-A082496(n+1)`
-/

namespace A184417.P9828979537033570579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A054735 (n + 1) - A082496 (n + 1)

end

end A184417.P9828979537033570579

namespace A184417

/-- `A006512(n+1)*A054735(n+1)-A082496(n+1)` -/
def P9828979537033570579.Spec : Prop :=
  ∀ n, P9828979537033570579.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P11005656121639013871

`2*A134020(n+2)+3`
-/

namespace A184417.P11005656121639013871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134020 (n + 2) + 3

end

end A184417.P11005656121639013871

namespace A184417

/-- `2*A134020(n+2)+3` -/
def P11005656121639013871.Spec : Prop :=
  ∀ n, P11005656121639013871.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P15840267991756356767

`A069484(A029707(n+1))-1`
-/

namespace A184417.P15840267991756356767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (A029707 (n + 1)).toNat - 1

end

end A184417.P15840267991756356767

namespace A184417

/-- `A069484(A029707(n+1))-1` -/
def P15840267991756356767.Spec : Prop :=
  ∀ n, P15840267991756356767.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P9373801333485067224

`A048851(A107770(n+1))-1`
-/

namespace A184417.P9373801333485067224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (A107770 (n + 1)).toNat - 1

end

end A184417.P9373801333485067224

namespace A184417

/-- `A048851(A107770(n+1))-1` -/
def P9373801333485067224.Spec : Prop :=
  ∀ n, P9373801333485067224.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P2724386509183263931

`A362941(n+1)+A108570(n+1)`
-/

namespace A184417.P2724386509183263931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) + A108570 (n + 1)

end

end A184417.P2724386509183263931

namespace A184417

/-- `A362941(n+1)+A108570(n+1)` -/
def P2724386509183263931.Spec : Prop :=
  ∀ n, P2724386509183263931.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P2448795240939877710

`A108570(n+1)+A108604(n+1)-1`
-/

namespace A184417.P2448795240939877710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108570 (n + 1) + (A108604 (n + 1) - 1)

end

end A184417.P2448795240939877710

namespace A184417

/-- `A108570(n+1)+A108604(n+1)-1` -/
def P2448795240939877710.Spec : Prop :=
  ∀ n, P2448795240939877710.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P7144444106925553660

`A081585(A040040(n+1))`
-/

namespace A184417.P7144444106925553660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 (A040040 (n + 1)).toNat

end

end A184417.P7144444106925553660

namespace A184417

/-- `A081585(A040040(n+1))` -/
def P7144444106925553660.Spec : Prop :=
  ∀ n, P7144444106925553660.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P7711144592884897166

`A081585(A168497(n+2))`
-/

namespace A184417.P7711144592884897166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 (A168497 (n + 2)).toNat

end

end A184417.P7711144592884897166

namespace A184417

/-- `A081585(A168497(n+2))` -/
def P7711144592884897166.Spec : Prop :=
  ∀ n, P7711144592884897166.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P12466515798305151525

`∩[A048851(n+1), A008527(n)]-1`
-/

namespace A184417.P12466515798305151525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A184417.P12466515798305151525

namespace A184417

/-- `∩[A048851(n+1), A008527(n)]-1` -/
def P12466515798305151525.Spec : Prop :=
  ∀ n, P12466515798305151525.a n = A184417 (n + 1)

end A184417

/-! ## A184417.P6865913738287527915

`A000217(A054735(n+1))-A001359(n+1)`
-/

namespace A184417.P6865913738287527915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A054735 (n + 1)).toNat - A001359 (n + 1)

end

end A184417.P6865913738287527915

namespace A184417

/-- `A000217(A054735(n+1))-A001359(n+1)` -/
def P6865913738287527915.Spec : Prop :=
  ∀ n, P6865913738287527915.a n = A184417 (n + 1)

end A184417

/-!
# A184418: Convolution square of A040001.

The programs for A184418, the canonical program `A184418.P11752725616120910994` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184418 has offset 0).

The definition of A184418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184418.P6649378514414716907

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A184418.P6649378514414716907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A184418.P6649378514414716907

namespace A184418

/-- `a(n-2)/(1-2/n)` -/
def P6649378514414716907.Spec : Prop :=
  ∀ n, P6649378514414716907.a n = (A184418 n : ℚ)

end A184418

/-! ## A184418.P11752725616120910994

`gcd(2, n)+a(n-2)+3` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184418

/-- `gcd(2, n)+a(n-2)+3` -/
def P11752725616120910994.Spec : Prop :=
  ∀ n, (P11752725616120910994.a n : ℤ) = A184418 n

theorem P11752725616120910994.correct : P11752725616120910994.Spec := by
  intro n
  simp only [A184418]

end A184418

/-! ## A184418.P4292174125888489998

`a(n-2)+5-n%2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A184418.P4292174125888489998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) + (5 - ((n % 2 : ℕ) : ℤ))

end

end A184418.P4292174125888489998

namespace A184418

/-- `a(n-2)+5-n%2` -/
def P4292174125888489998.Spec : Prop :=
  ∀ n, P4292174125888489998.a n = A184418 n

end A184418

/-! ## A184418.P2363286203891877919

`comp[3*(n+1)]+gcd(n+1, ∑[n])`
-/

namespace A184418.P2363286203891877919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A184418.P2363286203891877919

namespace A184418

/-- `comp[3*(n+1)]+gcd(n+1, ∑[n])` -/
def P2363286203891877919.Spec : Prop :=
  ∀ n, (P2363286203891877919.a n : ℤ) = A184418 n

end A184418

/-! ## A184418.P16001873193700529051

`∑[a(n-2)+(-1)^n]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A184418.P16001873193700529051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 1] fun n f1 =>
  f1 (n - 2) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184418.P16001873193700529051

namespace A184418

/-- `∑[a(n-2)+(-1)^n]` -/
def P16001873193700529051.Spec : Prop :=
  ∀ n, P16001873193700529051.a n = A184418 n

end A184418

/-! ## A184418.P128947303277751380

`A257143(n)+n`
-/

namespace A184418.P128947303277751380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n + (n : ℤ)

end

end A184418.P128947303277751380

namespace A184418

/-- `A257143(n)+n` -/
def P128947303277751380.Spec : Prop :=
  ∀ n, P128947303277751380.a n = A184418 n

end A184418

/-! ## A184418.P3037946637721965444

`abs(A280167(n))+n`
-/

namespace A184418.P3037946637721965444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280167 n| + (n : ℤ)

end

end A184418.P3037946637721965444

namespace A184418

/-- `abs(A280167(n))+n` -/
def P3037946637721965444.Spec : Prop :=
  ∀ n, P3037946637721965444.a n = A184418 n

end A184418

/-! ## A184418.P5557907152190624910

`A008486(n)-n/(2-and(1, n))`
-/

namespace A184418.P5557907152190624910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) - (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

end

end A184418.P5557907152190624910

namespace A184418

/-- `A008486(n)-n/(2-and(1, n))` -/
def P5557907152190624910.Spec : Prop :=
  ∀ n, P5557907152190624910.a n = (A184418 n : ℚ)

end A184418

/-! ## A184418.P13750412971112121852

`A063289(n+2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A184418.P13750412971112121852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A063289 (n + 2) - a (n - 1)

end

end A184418.P13750412971112121852

namespace A184418

/-- `A063289(n+2)-a(n-1)` -/
def P13750412971112121852.Spec : Prop :=
  ∀ n, P13750412971112121852.a n = A184418 n

end A184418

/-! ## A184418.P13903560526212321251

`A124080(n-1)/a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A184418.P13903560526212321251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A124080 (n - 1) : ℚ) / a (n - 1)

end

end A184418.P13903560526212321251

namespace A184418

/-- `A124080(n-1)/a(n-1)` -/
def P13903560526212321251.Spec : Prop :=
  ∀ n, P13903560526212321251.a n = (A184418 n : ℚ)

end A184418

/-! ## A184418.P341853655038810009

`A080512(A028310(n))+n`
-/

namespace A184418.P341853655038810009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A028310 n).toNat + (n : ℤ)

end

end A184418.P341853655038810009

namespace A184418

/-- `A080512(A028310(n))+n` -/
def P341853655038810009.Spec : Prop :=
  ∀ n, P341853655038810009.a n = A184418 n

end A184418

/-! ## A184418.P14520225623060857539

`A142150(n)+A004277(n)`
-/

namespace A184418.P14520225623060857539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A004277 n

end

end A184418.P14520225623060857539

namespace A184418

/-- `A142150(n)+A004277(n)` -/
def P14520225623060857539.Spec : Prop :=
  ∀ n, P14520225623060857539.a n = A184418 n

end A184418

/-! ## A184418.P10414439894724874027

`A158416(n)+A004273(n)`
-/

namespace A184418.P10414439894724874027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + A004273 n

end

end A184418.P10414439894724874027

namespace A184418

/-- `A158416(n)+A004273(n)` -/
def P10414439894724874027.Spec : Prop :=
  ∀ n, P10414439894724874027.a n = A184418 n

end A184418

/-! ## A184418.P12831765161264616885

`A257088(n)+A026741(n)`
-/

namespace A184418.P12831765161264616885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n + A026741 n

end

end A184418.P12831765161264616885

namespace A184418

/-- `A257088(n)+A026741(n)` -/
def P12831765161264616885.Spec : Prop :=
  ∀ n, P12831765161264616885.a n = A184418 n

end A184418

/-! ## A184418.P8805163288056134248

`A274922(n)+A165351(n)`
-/

namespace A184418.P8805163288056134248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n + A165351 n

end

end A184418.P8805163288056134248

namespace A184418

/-- `A274922(n)+A165351(n)` -/
def P8805163288056134248.Spec : Prop :=
  ∀ n, P8805163288056134248.a n = A184418 n

end A184418

/-! ## A184418.P2994650195821882277

`A301729(n)+A186421(n)`
-/

namespace A184418.P2994650195821882277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 n + A186421 n

end

end A184418.P2994650195821882277

namespace A184418

/-- `A301729(n)+A186421(n)` -/
def P2994650195821882277.Spec : Prop :=
  ∀ n, P2994650195821882277.a n = A184418 n

end A184418

/-! ## A184418.P17177541676023922954

`A347365(n)+A280167(n)`
-/

namespace A184418.P17177541676023922954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n + A280167 n

end

end A184418.P17177541676023922954

namespace A184418

/-- `A347365(n)+A280167(n)` -/
def P17177541676023922954.Spec : Prop :=
  ∀ n, P17177541676023922954.a n = A184418 n

end A184418

/-! ## A184418.P3645373924008501230

`A008486(n)-A026741(n)`
-/

namespace A184418.P3645373924008501230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A026741 n

end

end A184418.P3645373924008501230

namespace A184418

/-- `A008486(n)-A026741(n)` -/
def P3645373924008501230.Spec : Prop :=
  ∀ n, P3645373924008501230.a n = A184418 n

end A184418

/-! ## A184418.P9783522104582864984

`A134479(n)-A191967(n)`
-/

namespace A184418.P9783522104582864984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 n - A191967 n

end

end A184418.P9783522104582864984

namespace A184418

/-- `A134479(n)-A191967(n)` -/
def P9783522104582864984.Spec : Prop :=
  ∀ n, P9783522104582864984.a n = A184418 n

end A184418

/-! ## A184418.P9636474061295787775

`A265284(n)-A093353(n)`
-/

namespace A184418.P9636474061295787775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n - A093353 n

end

end A184418.P9636474061295787775

namespace A184418

/-- `A265284(n)-A093353(n)` -/
def P9636474061295787775.Spec : Prop :=
  ∀ n, P9636474061295787775.a n = A184418 n

end A184418

/-!
# A184419: Lower s-Wythoff sequence, where s=lower Wythoff sequence. Complement of A184420.

The programs for A184419, there is no canonical definition to state claims against.
-/

/-! ## A184419.P8074762271853557662

`comp[A184420(n+1)-1]+1`
-/

namespace A184419.P8074762271853557662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184419.P8074762271853557662

/-! ## A184419.P11120089966149525663

`A184420(n+1)-∑[A001468(n)]`
-/

namespace A184419.P11120089966149525663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184419.P11120089966149525663

/-! ## A184419.P14347029296440854339

`A184420(n+1)-Δ[A054347(n)]`
-/

namespace A184419.P14347029296440854339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - (f1 (n + 1) - f1 n)

end

end A184419.P14347029296440854339

/-! ## A184419.P624582555874089200

`A184420(n+1)-A000201(n+1)`
-/

namespace A184419.P624582555874089200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - A000201 (n + 1)

end

end A184419.P624582555874089200

/-! ## A184419.P9134386246802126415

`A184420(n+1)-(A022342(n+1)+1)`
-/

namespace A184419.P9134386246802126415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - (A022342 (n + 1) + 1)

end

end A184419.P9134386246802126415

/-! ## A184419.P1808419401373717186

`A184420(n+1)-A003622(n+1)+n`
-/

namespace A184419.P1808419401373717186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - A003622 (n + 1) + (n : ℤ)

end

end A184419.P1808419401373717186

/-! ## A184419.P18010754970263749455

`A184420(n+1)-(A005206(n)+1+n)`
-/

namespace A184419.P18010754970263749455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - (A005206 n + 1 + (n : ℤ))

end

end A184419.P18010754970263749455

/-! ## A184419.P4504672294693454793

`A184420(n+1)+n+1-A001950(n+1)`
-/

namespace A184419.P4504672294693454793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) + ((n + 1 : ℤ) - A001950 (n + 1))

end

end A184419.P4504672294693454793

/-! ## A184419.P15876192248059278447

`A184420(n+1)+A001489(∑[A001468(n)])`
-/

namespace A184419.P15876192248059278447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) + A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184419.P15876192248059278447

/-! ## A184419.P5610073884325141356

`A184420(n+1)+A001489(Δ[A054347(n)])`
-/

namespace A184419.P5610073884325141356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) + A001489 (f1 (n + 1) - f1 n).toNat

end

end A184419.P5610073884325141356

/-! ## A184419.P3792129800547731472

`A184420(n+1)-A002251(A001950(n+1))`
-/

namespace A184419.P3792129800547731472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - A002251 (A001950 (n + 1)).toNat

end

end A184419.P3792129800547731472

/-! ## A184419.P8012851180218092124

`A184420(n+1)-A005206(A003622(n+1))`
-/

namespace A184419.P8012851180218092124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n + 1) - A005206 (A003622 (n + 1)).toNat

end

end A184419.P8012851180218092124

/-!
# A184420: Upper s-Wythoff sequence, where s=upper Wythoff sequence. Complement of A184419.

The programs for A184420, there is no canonical definition to state claims against.
-/

/-! ## A184420.P15462209778634870325

`floor(A184419(n+1)+ϕ*(n+1))`
-/

namespace A184420.P15462209778634870325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184419 (n + 1) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A184420.P15462209778634870325

/-! ## A184420.P895362256649143816

`A184419(n+1)+A000201(n+1)`
-/

namespace A184420.P895362256649143816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (n + 1) + A000201 (n + 1)

end

end A184420.P895362256649143816

/-! ## A184420.P872239048061827340

`A184419(n+1)+A066096(n+1)`
-/

namespace A184420.P872239048061827340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (n + 1) + A066096 (n + 1)

end

end A184420.P872239048061827340

/-! ## A184420.P5222624526400611516

`A022342(n+1)+A184419(n+1)+1`
-/

namespace A184420.P5222624526400611516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) + (A184419 (n + 1) + 1)

end

end A184420.P5222624526400611516

/-! ## A184420.P10420233869321497558

`n+1+A184419(n+1)+A005206(n)`
-/

namespace A184420.P10420233869321497558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A184419 (n + 1) + A005206 n)

end

end A184420.P10420233869321497558

/-! ## A184420.P14589462778066718594

`A001950(n+1)+A184419(n+1)-(n+1)`
-/

namespace A184420.P14589462778066718594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A184419 (n + 1) - (n + 1 : ℤ))

end

end A184420.P14589462778066718594

/-!
# A184421: Lower s-Wythoff sequence, where s=upper Wythoff sequence. Complement of A184422.

The programs for A184421, there is no canonical definition to state claims against.
-/

/-! ## A184421.P10562884790789653862

`comp[A184422(n+1)-1]+1`
-/

namespace A184421.P10562884790789653862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184422 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184421.P10562884790789653862

/-! ## A184421.P10749917578085657069

`comp[A023443(A184422(n+1))]+1`
-/

namespace A184421.P10749917578085657069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184422 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184421.P10749917578085657069

/-! ## A184421.P10041203579935236412

`A184422(n+1)-∑[A282162(n)]`
-/

namespace A184421.P10041203579935236412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184422 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184421.P10041203579935236412

/-! ## A184421.P9034740766133169985

`A184422(n+1)-A001950(n+1)`
-/

namespace A184421.P9034740766133169985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184422 (n + 1) - A001950 (n + 1)

end

end A184421.P9034740766133169985

/-! ## A184421.P18001073443362006799

`A184422(n+1)-(n+1)-A000201(n+1)`
-/

namespace A184421.P18001073443362006799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184422 (n + 1) - (n + 1 : ℤ) - A000201 (n + 1)

end

end A184421.P18001073443362006799

/-! ## A184421.P5123397930593838171

`A184422(n+1)-(A000201(A000201(n+1))+1)`
-/

namespace A184421.P5123397930593838171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184422 (n + 1) - (A000201 (A000201 (n + 1)).toNat + 1)

end

end A184421.P5123397930593838171

/-! ## A184421.P6958880719035415348

`eq[char[A184422(n+1)], A151933(n)]`
-/

namespace A184421.P6958880719035415348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184422 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184421.P6958880719035415348

/-!
# A184422: Upper s-Wythoff sequence, where s=upper Wythoff sequence. Complement of A184421.

The programs for A184422, there is no canonical definition to state claims against.
-/

/-! ## A184422.P2775374567927203633

`floor(A184421(n+1)+(n+1)*ϕ²)`
-/

namespace A184422.P2775374567927203633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184421 (n + 1) : ℝ) + (n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A184422.P2775374567927203633

/-! ## A184422.P8335500667959962270

`A184421(n+1)+∑[A282162(n)]`
-/

namespace A184422.P8335500667959962270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184422.P8335500667959962270

/-! ## A184422.P7763591263957343803

`A184421(n+1)+A001950(n+1)`
-/

namespace A184422.P7763591263957343803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1) + A001950 (n + 1)

end

end A184422.P7763591263957343803

/-! ## A184422.P8075377913153226177

`A184421(n+1)+record[A002251(n+1)]`
-/

namespace A184422.P8075377913153226177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184422.P8075377913153226177

/-! ## A184422.P16674530956772984829

`A184421(n+1)+record[A054084(n+1)]`
-/

namespace A184422.P16674530956772984829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184422.P16674530956772984829

/-! ## A184422.P11453294358200650232

`A184421(n+1)+A283234(n+1)/2`
-/

namespace A184422.P11453294358200650232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184421 (n + 1) : ℚ) + (A283234 (n + 1) : ℚ) / 2

end

end A184422.P11453294358200650232

/-! ## A184422.P15769767619901309192

`A054770(n+1)+A184421(n+1)-n`
-/

namespace A184422.P15769767619901309192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1) + (A184421 (n + 1) - (n : ℤ))

end

end A184422.P15769767619901309192

/-! ## A184422.P1167248093944441759

`n+1+A184421(n+1)+A000201(n+1)`
-/

namespace A184422.P1167248093944441759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A184421 (n + 1) + A000201 (n + 1))

end

end A184422.P1167248093944441759

/-! ## A184422.P3189657426616218313

`A184421(n+1)+A002251(A000201(n+1))`
-/

namespace A184422.P3189657426616218313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1) + A002251 (A000201 (n + 1)).toNat

end

end A184422.P3189657426616218313

/-! ## A184422.P15112260095914295037

`A184421(n+1)+A123108(A001962(n+1))`
-/

namespace A184422.P15112260095914295037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1) + A123108 (A001962 (n + 1)).toNat

end

end A184422.P15112260095914295037

/-! ## A184422.P7788918723925368958

`A184421(n+1)+A001281(A283234(n+1))`
-/

namespace A184422.P7788918723925368958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1) + A001281 (A283234 (n + 1)).toNat

end

end A184422.P7788918723925368958

/-!
# A184423: a(n) = (2*n)!*(3*n)!/n!^5.

The programs for A184423, the canonical program `A184423.P3303203828994434715` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184423 has offset 0).

The definition of A184423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184423.P17075775754180544390

`6*(2*n-1)*(3*n-1)*(3*n-2)/n^3*a(n-1)` with `a(0)=1`
-/

namespace A184423.P17075775754180544390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * (((2 * n : ℤ) - 1 : ℚ) * (((3 * n : ℤ) - 1 : ℚ) * (((3 * n : ℤ) - 2 : ℚ) / (n ^ 3 : ℚ)))) * a (n - 1)

end

end A184423.P17075775754180544390

namespace A184423

/-- `6*(2*n-1)*(3*n-1)*(3*n-2)/n^3*a(n-1)` -/
def P17075775754180544390.Spec : Prop :=
  ∀ n, P17075775754180544390.a n = (A184423 n : ℚ)

end A184423

/-! ## A184423.P3303203828994434715

`A006480(n)*A000984(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184423

/-- `A006480(n)*A000984(n)` -/
def P3303203828994434715.Spec : Prop :=
  ∀ n, P3303203828994434715.a n = A184423 n

theorem P3303203828994434715.correct : P3303203828994434715.Spec := by
  intro n
  simp only [A184423]

end A184423

/-! ## A184423.P9114696465341784392

`C(2*n, n)²*C(3*n, n)`
-/

namespace A184423.P9114696465341784392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 2 * Nat.choose (3 * n) n

end

end A184423.P9114696465341784392

namespace A184423

/-- `C(2*n, n)²*C(3*n, n)` -/
def P9114696465341784392.Spec : Prop :=
  ∀ n, (P9114696465341784392.a n : ℤ) = A184423 n

end A184423

/-! ## A184423.P3893940010022884849

`C(2*n, n)²*A005809(n)`
-/

namespace A184423.P3893940010022884849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * A005809 n

end

end A184423.P3893940010022884849

namespace A184423

/-- `C(2*n, n)²*A005809(n)` -/
def P3893940010022884849.Spec : Prop :=
  ∀ n, P3893940010022884849.a n = A184423 n

end A184423

/-! ## A184423.P10109859266252881857

`C(2*n, n)²*A065942(2*n)`
-/

namespace A184423.P10109859266252881857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * A065942 (2 * n)

end

end A184423.P10109859266252881857

namespace A184423

/-- `C(2*n, n)²*A065942(2*n)` -/
def P10109859266252881857.Spec : Prop :=
  ∀ n, P10109859266252881857.a n = A184423 n

end A184423

/-! ## A184423.P909721173262771656

`C(3*n, n)*C(2*n, n)*record[A126930(n)]`
-/

namespace A184423.P909721173262771656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * Nat.choose (2 * n) n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184423.P909721173262771656

namespace A184423

/-- `C(3*n, n)*C(2*n, n)*record[A126930(n)]` -/
def P909721173262771656.Spec : Prop :=
  ∀ n, P909721173262771656.a n = A184423 n

end A184423

/-! ## A184423.P4456026607779943700

`A000984(n)²*A005809(n)`
-/

namespace A184423.P4456026607779943700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 * A005809 n

end

end A184423.P4456026607779943700

namespace A184423

/-- `A000984(n)²*A005809(n)` -/
def P4456026607779943700.Spec : Prop :=
  ∀ n, P4456026607779943700.a n = A184423 n

end A184423

/-! ## A184423.P2435236148481659078

`A001405(2*n)*A006480(n)`
-/

namespace A184423.P2435236148481659078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A006480 n

end

end A184423.P2435236148481659078

namespace A184423

/-- `A001405(2*n)*A006480(n)` -/
def P2435236148481659078.Spec : Prop :=
  ∀ n, P2435236148481659078.a n = A184423 n

end A184423

/-! ## A184423.P13903010753857166158

`A006480(n)/A005809(n)*A006480(n)`
-/

namespace A184423.P13903010753857166158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A005809 n : ℚ) * (A006480 n : ℚ)

end

end A184423.P13903010753857166158

namespace A184423

/-- `A006480(n)/A005809(n)*A006480(n)` -/
def P13903010753857166158.Spec : Prop :=
  ∀ n, P13903010753857166158.a n = (A184423 n : ℚ)

end A184423

/-!
# A184425: Lower s-Wythoff sequence, where s=A000217 (triangular numbers). Complement of A184426.

The programs for A184425, the canonical program `A184425.P8595937253418571360` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184425 has offset 1).

The definition of A184425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184425.P2149646116950947165

`comp[floor(∑[log(10)-2+n])-1]`
-/

namespace A184425.P2149646116950947165
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (10 : ℝ) - 2 + (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184425.P2149646116950947165

namespace A184425

/-- `comp[floor(∑[log(10)-2+n])-1]` -/
def P2149646116950947165.Spec : Prop :=
  ∀ n, (P2149646116950947165.a n : ℤ) = A184425 (n + 1)

end A184425

/-! ## A184425.P1803155282882322381

`comp[∑[n]-A210435(n)]-1`
-/

namespace A184425.P1803155282882322381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A210435 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A184425.P1803155282882322381

namespace A184425

/-- `comp[∑[n]-A210435(n)]-1` -/
def P1803155282882322381.Spec : Prop :=
  ∀ n, P1803155282882322381.a n = A184425 (n + 1)

end A184425

/-! ## A184425.P7385861239226999434

`comp[A184426(n+1)-1]+1`
-/

namespace A184425.P7385861239226999434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184426 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184425.P7385861239226999434

namespace A184425

/-- `comp[A184426(n+1)-1]+1` -/
def P7385861239226999434.Spec : Prop :=
  ∀ n, (P7385861239226999434.a n : ℤ) = A184425 (n + 1)

end A184425

/-! ## A184425.P7304197862242240503

`∑[char[∑[A276397(n)+n]]]+n`
-/

namespace A184425.P7304197862242240503
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276397 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A184425.P7304197862242240503

namespace A184425

/-- `∑[char[∑[A276397(n)+n]]]+n` -/
def P7304197862242240503.Spec : Prop :=
  ∀ n, (P7304197862242240503.a n : ℤ) = A184425 (n + 1)

end A184425

/-! ## A184425.P2419550782839102712

`comp[A056847(∑[n]+1)-1]-1`
-/

namespace A184425.P2419550782839102712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A184425.P2419550782839102712

namespace A184425

/-- `comp[A056847(∑[n]+1)-1]-1` -/
def P2419550782839102712.Spec : Prop :=
  ∀ n, P2419550782839102712.a n = A184425 (n + 1)

end A184425

/-! ## A184425.P6409273919363602118

`comp[∑[A102679(3*n)+n]]-1`
-/

namespace A184425.P6409273919363602118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (3 * n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A184425.P6409273919363602118

namespace A184425

/-- `comp[∑[A102679(3*n)+n]]-1` -/
def P6409273919363602118.Spec : Prop :=
  ∀ n, P6409273919363602118.a n = A184425 (n + 1)

end A184425

/-! ## A184425.P15874793791510787352

`comp[∑[n-A232750(abs(2-n))]]-1`
-/

namespace A184425.P15874793791510787352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A232750 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A184425.P15874793791510787352

namespace A184425

/-- `comp[∑[n-A232750(abs(2-n))]]-1` -/
def P15874793791510787352.Spec : Prop :=
  ∀ n, P15874793791510787352.a n = A184425 (n + 1)

end A184425

/-! ## A184425.P9974013590784511544

`∑[char[∑[A289035(n+1)+n]]]+n`
-/

namespace A184425.P9974013590784511544
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A184425.P9974013590784511544

namespace A184425

/-- `∑[char[∑[A289035(n+1)+n]]]+n` -/
def P9974013590784511544.Spec : Prop :=
  ∀ n, (P9974013590784511544.a n : ℤ) = A184425 (n + 1)

end A184425

/-! ## A184425.P13624904158502902643

`round(sqrt(A014132(2*(n+1)))+n)-1`
-/

namespace A184425.P13624904158502902643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A014132 (2 * (n + 1)) : ℝ) + (n : ℝ)) - 1

end

end A184425.P13624904158502902643

namespace A184425

/-- `round(sqrt(A014132(2*(n+1)))+n)-1` -/
def P13624904158502902643.Spec : Prop :=
  ∀ n, P13624904158502902643.a n = A184425 (n + 1)

end A184425

/-! ## A184425.P14481946710386579118

`lt[2, A208518(A135668(n+2))]`
-/

namespace A184425.P14481946710386579118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208518 (A135668 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184425.P14481946710386579118

namespace A184425

/-- `lt[2, A208518(A135668(n+2))]` -/
def P14481946710386579118.Spec : Prop :=
  ∀ n, (P14481946710386579118.a n : ℤ) = A184425 (n + 1)

end A184425

/-! ## A184425.P15148816920896391233

`A003056(A186497(n+2))+n-1`
-/

namespace A184425.P15148816920896391233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A186497 (n + 2)).toNat + ((n : ℤ) - 1)

end

end A184425.P15148816920896391233

namespace A184425

/-- `A003056(A186497(n+2))+n-1` -/
def P15148816920896391233.Spec : Prop :=
  ∀ n, P15148816920896391233.a n = A184425 (n + 1)

end A184425

/-! ## A184425.P8595937253418571360

`A259361(A007401(2*(n+1)))+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A184425

/-- `A259361(A007401(2*(n+1)))+n` -/
def P8595937253418571360.Spec : Prop :=
  ∀ n, P8595937253418571360.a n = A184425 (n + 1)

theorem P8595937253418571360.correct : P8595937253418571360.Spec := by
  intro n
  simp only [A184425, Nat.add_sub_cancel]

end A184425

/-! ## A184425.P14608178107269337586

`A000194(A014132(2*(n+1)))-1+n`
-/

namespace A184425.P14608178107269337586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A014132 (2 * (n + 1))).toNat - 1 + (n : ℤ)

end

end A184425.P14608178107269337586

namespace A184425

/-- `A000194(A014132(2*(n+1)))-1+n` -/
def P14608178107269337586.Spec : Prop :=
  ∀ n, P14608178107269337586.a n = A184425 (n + 1)

end A184425

/-! ## A184425.P16707824156475193390

`A000196(A194920(A017053(n)))+n`
-/

namespace A184425.P16707824156475193390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A194920 (A017053 n).toNat).toNat + (n : ℤ)

end

end A184425.P16707824156475193390

namespace A184425

/-- `A000196(A194920(A017053(n)))+n` -/
def P16707824156475193390.Spec : Prop :=
  ∀ n, P16707824156475193390.a n = A184425 (n + 1)

end A184425

/-!
# A184426: Upper s-Wythoff sequence, where s=A000217 (triangular numbers). Complement of A184425.

The programs for A184426, there is no canonical definition to state claims against.
-/

/-! ## A184426.P11003887628206229599

`comp[∑[n]-(ceil(n*log2(ϕ))+1)]+∑[n+1]`
-/

namespace A184426.P11003887628206229599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (⌈(n : ℝ) * Real.logb 2 Real.goldenRatio⌉ + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A184426.P11003887628206229599

/-! ## A184426.P13652824964870265085

`abs(A184425(n+1)+Δ[A000292(n)])`
-/

namespace A184426.P13652824964870265085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184425 (n + 1) + (f1 (n + 1) - f1 n)|

end

end A184426.P13652824964870265085

/-! ## A184426.P3354462594013193553

`A000027(A184425(n+1)+∑[n+1])`
-/

namespace A184426.P3354462594013193553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A184425 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A184426.P3354462594013193553

/-! ## A184426.P16995377711673262950

`(A184425(n+1)+∑[n+1])%A053741(n)`
-/

namespace A184426.P16995377711673262950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184425 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A053741 n)

end

end A184426.P16995377711673262950

/-! ## A184426.P17160341175141077909

`abs(A184425(n+1)+record[A114327(n)+1+n])`
-/

namespace A184426.P17160341175141077909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184425 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A184426.P17160341175141077909

/-! ## A184426.P12331993567510382372

`A023443(A184425(n+1)+Δ[A000292(n)]+1)`
-/

namespace A184426.P12331993567510382372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184425 (n + 1) + (f1 (n + 1) - f1 n) + 1).toNat

end

end A184426.P12331993567510382372

/-! ## A184426.P17574532240824689557

`(A184425(n+1)+Δ[A000292(n)])%A060231(n+1)`
-/

namespace A184426.P17574532240824689557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184425 (n + 1) + (f1 (n + 1) - f1 n)) (A060231 (n + 1))

end

end A184426.P17574532240824689557

/-!
# A184427: Lower s-Wythoff sequence of A000290 (the squares). Complement of A184428.

The programs for A184427, the canonical program `A184427.P18072499117235604643` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184427 has offset 1).

The definition of A184427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184427.P18072499117235604643

`comp[round(n*(n-atan(1)))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184427

/-- `comp[round(n*(n-atan(1)))]` -/
def P18072499117235604643.Spec : Prop :=
  ∀ n, (P18072499117235604643.a n : ℤ) = A184427 (n + 1)

theorem P18072499117235604643.correct : P18072499117235604643.Spec := by
  intro n
  simp only [A184427, Nat.add_sub_cancel]

end A184427

/-! ## A184427.P2637577596188476240

`comp[round(n*(n-cos(7)))]`
-/

namespace A184427.P2637577596188476240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) - Real.cos (7 : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184427.P2637577596188476240

namespace A184427

/-- `comp[round(n*(n-cos(7)))]` -/
def P2637577596188476240.Spec : Prop :=
  ∀ n, (P2637577596188476240.a n : ℤ) = A184427 (n + 1)

end A184427

/-! ## A184427.P15039879707196252012

`comp[round(n*(n-tanh(1)))]`
-/

namespace A184427.P15039879707196252012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) - Real.tanh (1 : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184427.P15039879707196252012

namespace A184427

/-- `comp[round(n*(n-tanh(1)))]` -/
def P15039879707196252012.Spec : Prop :=
  ∀ n, (P15039879707196252012.a n : ℤ) = A184427 (n + 1)

end A184427

/-! ## A184427.P2232191420444445040

`comp[round(n*(n-acot(1)))]`
-/

namespace A184427.P2232191420444445040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) - SequenceMachineLib.acot (1 : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184427.P2232191420444445040

namespace A184427

/-- `comp[round(n*(n-acot(1)))]` -/
def P2232191420444445040.Spec : Prop :=
  ∀ n, (P2232191420444445040.a n : ℤ) = A184427 (n + 1)

end A184427

/-! ## A184427.P1532722592985254585

`comp[round(n*(sqrt(ϕ)+n))]`
-/

namespace A184427.P1532722592985254585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (Real.sqrt Real.goldenRatio + (n : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184427.P1532722592985254585

namespace A184427

/-- `comp[round(n*(sqrt(ϕ)+n))]` -/
def P1532722592985254585.Spec : Prop :=
  ∀ n, (P1532722592985254585.a n : ℤ) = A184427 (n + 1)

end A184427

/-! ## A184427.P16802542341157766827

`∑[char[A002265(n+2)+n²]]+n`
-/

namespace A184427.P16802542341157766827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 2) + (n ^ 2 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A184427.P16802542341157766827

namespace A184427

/-- `∑[char[A002265(n+2)+n²]]+n` -/
def P16802542341157766827.Spec : Prop :=
  ∀ n, (P16802542341157766827.a n : ℤ) = A184427 (n + 1)

end A184427

/-! ## A184427.P10855498479176574677

`A000196(A000196(A351362(n+1)))+n+1`
-/

namespace A184427.P10855498479176574677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 (A351362 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A184427.P10855498479176574677

namespace A184427

/-- `A000196(A000196(A351362(n+1)))+n+1` -/
def P10855498479176574677.Spec : Prop :=
  ∀ n, P10855498479176574677.a n = A184427 (n + 1)

end A184427

/-! ## A184427.P4674572442551454904

`A184428(n+1)-(n+1)²`
-/

namespace A184427.P4674572442551454904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184428 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A184427.P4674572442551454904

namespace A184427

/-- `A184428(n+1)-(n+1)²` -/
def P4674572442551454904.Spec : Prop :=
  ∀ n, P4674572442551454904.a n = A184427 (n + 1)

end A184427

/-! ## A184427.P1315052761151885639

`A053186(A184428(n+1))`
-/

namespace A184427.P1315052761151885639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A184428 (n + 1)).toNat

end

end A184427.P1315052761151885639

namespace A184427

/-- `A053186(A184428(n+1))` -/
def P1315052761151885639.Spec : Prop :=
  ∀ n, P1315052761151885639.a n = A184427 (n + 1)

end A184427

/-!
# A184428: Upper s-Wythoff sequence of A000290 (the squares). Complement of A184427.

The programs for A184428, there is no canonical definition to state claims against.
-/

/-! ## A184428.P10978986027861123187

`(n+1)²+comp[round(n*(n-atan(1)))]`
-/

namespace A184428.P10978986027861123187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) - Real.arctan (1 : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184428.P10978986027861123187

/-! ## A184428.P14152602804832225259

`comp[round(n*(n-cos(7)))]+(n+1)²`
-/

namespace A184428.P14152602804832225259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) - Real.cos (7 : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1) ^ 2

end

end A184428.P14152602804832225259

/-! ## A184428.P3571369411005491191

`comp[round(n*(sqrt(ϕ)+n))]+(n+1)²`
-/

namespace A184428.P3571369411005491191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (Real.sqrt Real.goldenRatio + (n : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1) ^ 2

end

end A184428.P3571369411005491191

/-! ## A184428.P16522805894645569284

`∑[A051903(A359860(n+1))+2*n+1]`
-/

namespace A184428.P16522805894645569284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A359860 (n + 1)).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184428.P16522805894645569284

/-! ## A184428.P12468730076860168801

`∑[∑[A091412(A014313(n+1)+1)]]`
-/

namespace A184428.P12468730076860168801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091412 (A014313 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184428.P12468730076860168801

/-!
# A184429: Lower s-Wythoff sequence of A184429 (quarter-squares). Complement of A184430.

The programs for A184429, the canonical program `A184429.P5122746667245986841` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184429 has offset 1).

The definition of A184429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184429.P16549684496638313925

`comp[A184430(n+1)-1]+1`
-/

namespace A184429.P16549684496638313925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184430 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184429.P16549684496638313925

namespace A184429

/-- `comp[A184430(n+1)-1]+1` -/
def P16549684496638313925.Spec : Prop :=
  ∀ n, (P16549684496638313925.a n : ℤ) = A184429 (n + 1)

end A184429

/-! ## A184429.P6511350852984233141

`A225687(∑[n%2+2])-1+n`
-/

namespace A184429.P6511350852984233141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ)

end

end A184429.P6511350852984233141

namespace A184429

/-- `A225687(∑[n%2+2])-1+n` -/
def P6511350852984233141.Spec : Prop :=
  ∀ n, P6511350852984233141.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P4883119245512701610

`A225687(∑[and(1, n)+2])-1+n`
-/

namespace A184429.P4883119245512701610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ)

end

end A184429.P4883119245512701610

namespace A184429

/-- `A225687(∑[and(1, n)+2])-1+n` -/
def P4883119245512701610.Spec : Prop :=
  ∀ n, P4883119245512701610.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P4364983248984805960

`A225687(∑[gcd(2, n+1)+1])-1+n`
-/

namespace A184429.P4364983248984805960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ)

end

end A184429.P4364983248984805960

namespace A184429

/-- `A225687(∑[gcd(2, n+1)+1])-1+n` -/
def P4364983248984805960.Spec : Prop :=
  ∀ n, P4364983248984805960.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P2492881521707257625

`A225687(∑[abs(or(1, n)-3-n)])-1+n`
-/

namespace A184429.P2492881521707257625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 n : ℤ) - 3 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 + (n : ℤ)

end

end A184429.P2492881521707257625

namespace A184429

/-- `A225687(∑[abs(or(1, n)-3-n)])-1+n` -/
def P2492881521707257625.Spec : Prop :=
  ∀ n, P2492881521707257625.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P5122746667245986841

`A135665(A315303(n)+1)+1+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A184429

/-- `A135665(A315303(n)+1)+1+n` -/
def P5122746667245986841.Spec : Prop :=
  ∀ n, P5122746667245986841.a n = A184429 (n + 1)

theorem P5122746667245986841.correct : P5122746667245986841.Spec := by
  intro n
  simp only [A184429, Nat.add_sub_cancel]

end A184429

/-! ## A184429.P2402568947300009529

`A225687(∑[A000034(n)+1])-1+n`
-/

namespace A184429.P2402568947300009529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 + (n : ℤ)

end

end A184429.P2402568947300009529

namespace A184429

/-- `A225687(∑[A000034(n)+1])-1+n` -/
def P2402568947300009529.Spec : Prop :=
  ∀ n, P2402568947300009529.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P7251684071430325964

`A225687(∑[A000035(n)+2])-1+n`
-/

namespace A184429.P7251684071430325964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 + (n : ℤ)

end

end A184429.P7251684071430325964

namespace A184429

/-- `A225687(∑[A000035(n)+2])-1+n` -/
def P7251684071430325964.Spec : Prop :=
  ∀ n, P7251684071430325964.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P495898960753222226

`A225687(A047209(n+1)+1)-1+n`
-/

namespace A184429.P495898960753222226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A047209 (n + 1) + 1).toNat - 1 + (n : ℤ)

end

end A184429.P495898960753222226

namespace A184429

/-- `A225687(A047209(n+1)+1)-1+n` -/
def P495898960753222226.Spec : Prop :=
  ∀ n, P495898960753222226.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P7387662130470432188

`(A225687(A047209(n+1)+1)+4*n+2)%A008486(n+1)`
-/

namespace A184429.P7387662130470432188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225687 (A047209 (n + 1) + 1).toNat + (4 * n + 2 : ℤ)) (A008486 (n + 1))

end

end A184429.P7387662130470432188

namespace A184429

/-- `(A225687(A047209(n+1)+1)+4*n+2)%A008486(n+1)` -/
def P7387662130470432188.Spec : Prop :=
  ∀ n, P7387662130470432188.a n = A184429 (n + 1)

end A184429

/-! ## A184429.P10821350789617745413

`(A225687(A047209(n+1)+1)+A030118(3*n))%(2*(n+1))`
-/

namespace A184429.P10821350789617745413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225687 (A047209 (n + 1) + 1).toNat + A030118 (3 * n)) (2 * (n + 1) : ℤ)

end

end A184429.P10821350789617745413

namespace A184429

/-- `(A225687(A047209(n+1)+1)+A030118(3*n))%(2*(n+1))` -/
def P10821350789617745413.Spec : Prop :=
  ∀ n, P10821350789617745413.a n = A184429 (n + 1)

end A184429

/-!
# A184430: Upper s-Wythoff sequence, where s=A002620 (quarter squares). Complement of A184429.

The programs for A184430, there is no canonical definition to state claims against.
-/

/-! ## A184430.P8183278965504293428

`A184429(n+1)+∑[∑[char[2*n]]]`
-/

namespace A184430.P8183278965504293428
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184429 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A184430.P8183278965504293428

/-! ## A184430.P6084102597278128526

`A024206(n+1)+A184429(n+1)+1`
-/

namespace A184430.P6084102597278128526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) + (A184429 (n + 1) + 1)

end

end A184430.P6084102597278128526

/-! ## A184430.P1661833124654220653

`A307018(3*(n+1))+A184429(n+1)`
-/

namespace A184430.P1661833124654220653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (3 * (n + 1)) + A184429 (n + 1)

end

end A184430.P1661833124654220653

/-! ## A184430.P10522275839098793812

`A087811(n+1)+A225687(∑[and(1, n)+2])-1+n`
-/

namespace A184430.P10522275839098793812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + (A225687 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ))

end

end A184430.P10522275839098793812

/-! ## A184430.P16833798844769748333

`A087811(n+1)+A225687(∑[gcd(2, n+1)+1])-1+n`
-/

namespace A184430.P16833798844769748333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + (A225687 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ))

end

end A184430.P16833798844769748333

/-! ## A184430.P3378713160775327303

`record[A184429(A008619(n))+A008733(n)]`
-/

namespace A184430.P3378713160775327303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184429 (A008619 n).toNat + A008733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184430.P3378713160775327303

/-! ## A184430.P11735047604429147100

`∑[A008619(n)]+A225687(A047209(n+1)+1)-1+n`
-/

namespace A184430.P11735047604429147100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A225687 (A047209 (n + 1) + 1).toNat - 1 + (n : ℤ))

end

end A184430.P11735047604429147100

/-! ## A184430.P11966066579597859856

`A087811(n+1)+A225687(∑[A000034(n)+1])-1+n`
-/

namespace A184430.P11966066579597859856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + (A225687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 + (n : ℤ))

end

end A184430.P11966066579597859856

/-! ## A184430.P18287664787884159008

`record[A008733(n)]+A225687(A047209(n+1)+1)-1+n`
-/

namespace A184430.P18287664787884159008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A225687 (A047209 (n + 1) + 1).toNat - 1 + (n : ℤ))

end

end A184430.P18287664787884159008

/-! ## A184430.P16717942758234788723

`A087811(n+1)+A225687(A047209(n+1)+1)-1+n`
-/

namespace A184430.P16717942758234788723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + (A225687 (A047209 (n + 1) + 1).toNat - 1 + (n : ℤ))

end

end A184430.P16717942758234788723

/-!
# A184431: Lower s-Wythoff sequence, where s=A184431 (eighth-cubes). Complement of A184432.

The programs for A184431, the canonical program `A184431.P12849044017549371650` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184431 has offset 1).

The definition of A184431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184431.P14268616602145939749

`comp[A184432(n+1)-1]+1`
-/

namespace A184431.P14268616602145939749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184432 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184431.P14268616602145939749

namespace A184431

/-- `comp[A184432(n+1)-1]+1` -/
def P14268616602145939749.Spec : Prop :=
  ∀ n, (P14268616602145939749.a n : ℤ) = A184431 (n + 1)

end A184431

/-! ## A184431.P5731980179079213201

`comp[∑[A143579(A324588(n+1))]]`
-/

namespace A184431.P5731980179079213201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (A324588 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184431.P5731980179079213201

namespace A184431

/-- `comp[∑[A143579(A324588(n+1))]]` -/
def P5731980179079213201.Spec : Prop :=
  ∀ n, (P5731980179079213201.a n : ℤ) = A184431 (n + 1)

end A184431

/-! ## A184431.P14475723892112627430

`comp[∑[A337718(A342094(n+1))]]`
-/

namespace A184431.P14475723892112627430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337718 (A342094 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184431.P14475723892112627430

namespace A184431

/-- `comp[∑[A337718(A342094(n+1))]]` -/
def P14475723892112627430.Spec : Prop :=
  ∀ n, (P14475723892112627430.a n : ℤ) = A184431 (n + 1)

end A184431

/-! ## A184431.P12849044017549371650

`comp[A109900(n)+A042965(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184431

/-- `comp[A109900(n)+A042965(n+1)]` -/
def P12849044017549371650.Spec : Prop :=
  ∀ n, (P12849044017549371650.a n : ℤ) = A184431 (n + 1)

theorem P12849044017549371650.correct : P12849044017549371650.Spec := by
  intro n
  simp only [A184431, Nat.add_sub_cancel]

end A184431

/-! ## A184431.P4302950296158683897

`∑[A010057(A003072(n+1)-2)]+n`
-/

namespace A184431.P4302950296158683897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A003072 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184431.P4302950296158683897

namespace A184431

/-- `∑[A010057(A003072(n+1)-2)]+n` -/
def P4302950296158683897.Spec : Prop :=
  ∀ n, P4302950296158683897.a n = A184431 (n + 1)

end A184431

/-! ## A184431.P9990166172420856176

`lt[(-1)^n, A295907(n+1)]`
-/

namespace A184431.P9990166172420856176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A184431.P9990166172420856176

namespace A184431

/-- `lt[(-1)^n, A295907(n+1)]` -/
def P9990166172420856176.Spec : Prop :=
  ∀ n, (P9990166172420856176.a n : ℤ) = A184431 (n + 1)

end A184431

/-! ## A184431.P8704351498695561103

`∑[A069517(A333222(n+6))!]`
-/

namespace A184431.P8704351498695561103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A069517 (A333222 (n + 6)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184431.P8704351498695561103

namespace A184431

/-- `∑[A069517(A333222(n+6))!]` -/
def P8704351498695561103.Spec : Prop :=
  ∀ n, (P8704351498695561103.a n : ℤ) = A184431 (n + 1)

end A184431

/-! ## A184431.P12814122228216829315

`A184432(n+1)-A081276(n+2)`
-/

namespace A184431.P12814122228216829315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184432 (n + 1) - A081276 (n + 2)

end

end A184431.P12814122228216829315

namespace A184431

/-- `A184432(n+1)-A081276(n+2)` -/
def P12814122228216829315.Spec : Prop :=
  ∀ n, P12814122228216829315.a n = A184431 (n + 1)

end A184431

/-! ## A184431.P15864057042483015456

`comp[A175427(A175427(2*(∑[n]+1)))]`
-/

namespace A184431.P15864057042483015456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A175427 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184431.P15864057042483015456

namespace A184431

/-- `comp[A175427(A175427(2*(∑[n]+1)))]` -/
def P15864057042483015456.Spec : Prop :=
  ∀ n, (P15864057042483015456.a n : ℤ) = A184431 (n + 1)

end A184431

/-!
# A184432: Upper s-Wythoff sequence, where s=A081276 (eighth cubes). Complement of A184431.

The programs for A184432, there is no canonical definition to state claims against.
-/

/-! ## A184432.P11007965196742120630

`A184431(n+1)+A081276(n+2)`
-/

namespace A184432.P11007965196742120630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184431 (n + 1) + A081276 (n + 2)

end

end A184432.P11007965196742120630

/-! ## A184432.P12048135715930787688

`A081276(n+2)+lt[(-1)^n, A295907(n+1)]`
-/

namespace A184432.P12048135715930787688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (n + 2) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A184432.P12048135715930787688

/-! ## A184432.P18328928202250053612

`A081276(n+2)+∑[A069517(A333222(n+6))!]`
-/

namespace A184432.P18328928202250053612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A069517 (A333222 (n + 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A184432.P18328928202250053612

/-! ## A184432.P492413362278768972

`A081276(n+2)+∑[A010057(A003072(n+1)-2)]+n`
-/

namespace A184432.P492413362278768972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A003072 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (n + 2) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A184432.P492413362278768972

/-! ## A184432.P4956728144538448368

`A081276(n+2)+lt[2, A020639(A226830(n+1))]`
-/

namespace A184432.P4956728144538448368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A226830 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (n + 2) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A184432.P4956728144538448368

/-!
# A184433: Number of strings of numbers x(i=1..n) in 0..n with sum i*x(i)^2 equal to n^3.

The programs for A184433, there is no canonical definition to state claims against.
-/

/-! ## A184433.P14617703694025811266

`A184441((n+1)²+n²)`
-/

namespace A184433.P14617703694025811266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 ((n + 1) ^ 2 + n ^ 2)

end

end A184433.P14617703694025811266

/-! ## A184433.P9077417982372856738

`A184441(A001844(n))^C(3, C(3, n²))`
-/

namespace A184433.P9077417982372856738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A001844 n).toNat ^ Nat.choose 3 (Nat.choose 3 (n ^ 2))

end

end A184433.P9077417982372856738

/-! ## A184433.P12973405738401944005

`or(A000007(n), A184441(A001844(n)))`
-/

namespace A184433.P12973405738401944005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A184441 (A001844 n).toNat)

end

end A184433.P12973405738401944005

/-! ## A184433.P8822153020455279696

`A184441(A001844(n))^A002426(C(2, n+1))`
-/

namespace A184433.P8822153020455279696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184441 (A001844 n).toNat : ℚ) ^ (A002426 (Nat.choose 2 (n + 1)) : ℤ)

end

end A184433.P8822153020455279696

/-! ## A184433.P6375590585592727058

`A014963(A007774(n+3))*A184441(A001844(n))`
-/

namespace A184433.P6375590585592727058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007774 (n + 3)).toNat * A184441 (A001844 n).toNat

end

end A184433.P6375590585592727058

/-!
# A184434: Number of strings of numbers x(i=1..n) in 0..2 with sum i*x(i)^2 equal to n*4.

The programs for A184434, there is no canonical definition to state claims against.
-/

/-! ## A184434.P777402220842906317

`A184441(∑[n+2])`
-/

namespace A184434.P777402220842906317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184434.P777402220842906317

/-! ## A184434.P10722390954907384603

`or(char[1], A184441(A000096(n+1)))`
-/

namespace A184434.P10722390954907384603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184441 (A000096 (n + 1)).toNat)

end

end A184434.P10722390954907384603

/-! ## A184434.P8141164991947845709

`A184441(A000096(n+1))%A000051(n)`
-/

namespace A184434.P8141164991947845709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184441 (A000096 (n + 1)).toNat) (A000051 n)

end

end A184434.P8141164991947845709

/-! ## A184434.P330465360841503110

`A184441(A000096(n+1))+A000035(2*n)`
-/

namespace A184434.P330465360841503110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A184434.P330465360841503110

/-! ## A184434.P17345405824621799409

`A184441(A000096(n+1))+A000007(2*(n+2))`
-/

namespace A184434.P17345405824621799409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000096 (n + 1)).toNat + A000007 (2 * (n + 2))

end

end A184434.P17345405824621799409

/-! ## A184434.P7508112010031986851

`A184441(A000096(n+1))+A097331(2*(n+2))`
-/

namespace A184434.P7508112010031986851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000096 (n + 1)).toNat + A097331 (2 * (n + 2))

end

end A184434.P7508112010031986851

/-!
# A184435: Number of strings of numbers x(i=1..n) in 0..3 with sum i*x(i)^2 equal to n*9.

The programs for A184435, there is no canonical definition to state claims against.
-/

/-! ## A184435.P6594569364470436678

`A184441(∑[n+3]+1)`
-/

namespace A184435.P6594569364470436678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184435.P6594569364470436678

/-! ## A184435.P5273638420163306038

`A184441(A034856(n+2))^ceil(acot(n))`
-/

namespace A184435.P5273638420163306038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184441 (A034856 (n + 2)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A184435.P5273638420163306038

/-! ## A184435.P10896097775301859899

`A184441(A034856(n+2))+A079978(3*n+1)`
-/

namespace A184435.P10896097775301859899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A034856 (n + 2)).toNat + A079978 (3 * n + 1)

end

end A184435.P10896097775301859899

/-! ## A184435.P2805340607678908971

`A184441(A034856(n+2))*A204418(3*n+2)`
-/

namespace A184435.P2805340607678908971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A034856 (n + 2)).toNat * A204418 (3 * n + 2)

end

end A184435.P2805340607678908971

/-!
# A184436: Number of strings of numbers x(i=1..n) in 0..4 with sum i*x(i)^2 equal to n*16.

The programs for A184436, there is no canonical definition to state claims against.
-/

/-! ## A184436.P18253635582493488740

`A184441(A027379(n+2))`
-/

namespace A184436.P18253635582493488740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A027379 (n + 2)).toNat

end

end A184436.P18253635582493488740

/-! ## A184436.P16796394775778205224

`A184441(A055998(n+2))`
-/

namespace A184436.P16796394775778205224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A055998 (n + 2)).toNat

end

end A184436.P16796394775778205224

/-! ## A184436.P3611338221400040609

`A184441(A155212(n)+5)`
-/

namespace A184436.P3611338221400040609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A155212 n + 5).toNat

end

end A184436.P3611338221400040609

/-! ## A184436.P8064304373076445534

`A184441(A056000(n)+7)`
-/

namespace A184436.P8064304373076445534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A056000 n + 7).toNat

end

end A184436.P8064304373076445534

/-! ## A184436.P2306902905064950158

`A184441(A052905(n+1)+2)`
-/

namespace A184436.P2306902905064950158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A052905 (n + 1) + 2).toNat

end

end A184436.P2306902905064950158

/-!
# A184437: Number of strings of numbers x(i=1..n) in 0..5 with sum i*x(i)^2 equal to n*25.

The programs for A184437, there is no canonical definition to state claims against.
-/

/-! ## A184437.P7013481589382463539

`A184441(∑[n+5]+6)`
-/

namespace A184437.P7013481589382463539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184437.P7013481589382463539

/-! ## A184437.P8563526828908075262

`A184441(A000217(n+5)-4)*A262681(n)`
-/

namespace A184437.P8563526828908075262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000217 (n + 5) - 4).toNat * A262681 n

end

end A184437.P8563526828908075262

/-! ## A184437.P7480675759632088542

`A184441(A046691(n+3))%A207747(n+1)`
-/

namespace A184437.P7480675759632088542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184441 (A046691 (n + 3)).toNat) (A207747 (n + 1))

end

end A184437.P7480675759632088542

/-! ## A184437.P1870196725474892543

`lcm(A165326(n), A184441(A000217(n+5)-4))`
-/

namespace A184437.P1870196725474892543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A184441 (A000217 (n + 5) - 4).toNat)

end

end A184437.P1870196725474892543

/-!
# A184438: Number of strings of numbers x(i=1..n) in 0..6 with sum i*x(i)^2 equal to n*36.

The programs for A184438, there is no canonical definition to state claims against.
-/

/-! ## A184438.P7510891827168496378

`A184441(A052905(n+3))`
-/

namespace A184438.P7510891827168496378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A052905 (n + 3)).toNat

end

end A184438.P7510891827168496378

/-! ## A184438.P18314540979951677565

`A184441(A046691(n+4)-1)`
-/

namespace A184438.P18314540979951677565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A046691 (n + 4) - 1).toNat

end

end A184438.P18314540979951677565

/-! ## A184438.P1413410289342161331

`A184441(A000124(n+6)-6)`
-/

namespace A184438.P1413410289342161331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000124 (n + 6) - 6).toNat

end

end A184438.P1413410289342161331

/-! ## A184438.P6166648583893946699

`A184441(A000217(n+5)+n+1)`
-/

namespace A184438.P6166648583893946699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A184438.P6166648583893946699

/-! ## A184438.P9319393781716286689

`A184441(A167499(n+3)+2*n+1)`
-/

namespace A184438.P9319393781716286689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A184438.P9319393781716286689

/-!
# A184439: Number of strings of numbers x(i=1..n) in 0..7 with sum i*x(i)^2 equal to n*49.

The programs for A184439, there is no canonical definition to state claims against.
-/

/-! ## A184439.P6576592296932361838

`A184441(A055999(n+4))`
-/

namespace A184439.P6576592296932361838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A055999 (n + 4)).toNat

end

end A184439.P6576592296932361838

/-! ## A184439.P7222638753521730339

`A184441(A046691(n+5)-2)`
-/

namespace A184439.P7222638753521730339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A046691 (n + 5) - 2).toNat

end

end A184439.P7222638753521730339

/-! ## A184439.P13483880053355359400

`A184441(A000096(n+6)-5)`
-/

namespace A184439.P13483880053355359400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000096 (n + 6) - 5).toNat

end

end A184439.P13483880053355359400

/-! ## A184439.P636848174311054449

`A184441(A000124(n+7)-7)`
-/

namespace A184439.P636848174311054449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000124 (n + 7) - 7).toNat

end

end A184439.P636848174311054449

/-! ## A184439.P16676108603444504620

`A184441(A034856(n+5)+n+3)`
-/

namespace A184439.P16676108603444504620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A034856 (n + 5) + (n + 3 : ℤ)).toNat

end

end A184439.P16676108603444504620

/-!
# A184440: Number of strings of numbers x(i=1..n) in 0..8 with sum i*x(i)^2 equal to n*64.

The programs for A184440, there is no canonical definition to state claims against.
-/

/-! ## A184440.P10621516470611112838

`A184441(eq[7, A193592(n)])`
-/

namespace A184440.P10621516470611112838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184440.P10621516470611112838

/-! ## A184440.P8371633588024905

`A184441(A000124(n+8)-8)`
-/

namespace A184440.P8371633588024905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000124 (n + 8) - 8).toNat

end

end A184440.P8371633588024905

/-! ## A184440.P663699146664866210

`A184441(A133263(n+8)-9)`
-/

namespace A184440.P663699146664866210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A133263 (n + 8) - 9).toNat

end

end A184440.P663699146664866210

/-! ## A184440.P14925830405541958168

`A184441(A000217(n+7)+n+1)`
-/

namespace A184440.P14925830405541958168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A184440.P14925830405541958168

/-! ## A184440.P10313721151122561343

`A184441(A046691(n+5)+n+5)`
-/

namespace A184440.P10313721151122561343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A046691 (n + 5) + (n + 5 : ℤ)).toNat

end

end A184440.P10313721151122561343

/-!
# A184441: T(n,k)=Number of strings of numbers x(i=1..n) in 0..k with sum i*x(i)^2 equal to n*k^2.

The programs for A184441, there is no canonical definition to state claims against.
-/

/-! ## A184441.P15822762595559781073

`A393584(A213999(n))`
-/

namespace A184441.P15822762595559781073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393584 (A213999 n).toNat

end

end A184441.P15822762595559781073

/-! ## A184441.P7740704266710328901

`A111972(2^A213999(n))`
-/

namespace A184441.P7740704266710328901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A213999 n : ℤ))).toNat

end

end A184441.P7740704266710328901

/-! ## A184441.P3111291185839228294

`A096443(A225641(n)^∏{e}[n+1, #])`
-/

namespace A184441.P3111291185839228294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096443 (A225641 n ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A184441.P3111291185839228294

/-! ## A184441.P4106870097824342782

`A117500(A283674(n))`
-/

namespace A184441.P4106870097824342782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117500 (A283674 n).toNat

end

end A184441.P4106870097824342782

/-! ## A184441.P3353739238675055237

`A117500(A294758(n))`
-/

namespace A184441.P3353739238675055237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117500 (A294758 n).toNat

end

end A184441.P3353739238675055237

/-!
# A184442: Number of strings of numbers x(i=1..3) in 0..n with sum i*x(i)^2 equal to n*9.

The programs for A184442, there is no canonical definition to state claims against.
-/

/-! ## A184442.P7829135288329154690

`A184441(∑[n+2]+4)`
-/

namespace A184442.P7829135288329154690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184442.P7829135288329154690

/-! ## A184442.P1052940210805881590

`A184441(A167499(n)+n)%(n+7)`
-/

namespace A184442.P1052940210805881590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184441 (A167499 n + (n : ℤ)).toNat) (n + 7 : ℤ)

end

end A184442.P1052940210805881590

/-! ## A184442.P12953275571277250743

`A184441(A034856(n+1)+5)%(10*(n+1))`
-/

namespace A184442.P12953275571277250743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184441 (A034856 (n + 1) + 5).toNat) (10 * (n + 1) : ℤ)

end

end A184442.P12953275571277250743

/-! ## A184442.P10669326666356620303

`A184441(A167499(n)+n)+A000040(gcd(n, n+1)+1)-3`
-/

namespace A184442.P10669326666356620303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167499 n + (n : ℤ)).toNat + A000040 (Nat.gcd n (n + 1) + 1) - 3

end

end A184442.P10669326666356620303

/-! ## A184442.P11234080331955116393

`A132272(A321017(n+1))*A184441(A167614(n+1))`
-/

namespace A184442.P11234080331955116393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 (A321017 (n + 1)).toNat * A184441 (A167614 (n + 1)).toNat

end

end A184442.P11234080331955116393

/-!
# A184443: Number of strings of numbers x(i=1..4) in 0..n with sum i*x(i)^2 equal to n*16.

The programs for A184443, there is no canonical definition to state claims against.
-/

/-! ## A184443.P16317859251631479589

`A184441(A052905(n)+9)`
-/

namespace A184443.P16317859251631479589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A052905 n + 9).toNat

end

end A184443.P16317859251631479589

/-! ## A184443.P2001154585297921368

`A184441(A055999(n)+10)`
-/

namespace A184443.P2001154585297921368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A055999 n + 10).toNat

end

end A184443.P2001154585297921368

/-! ## A184443.P16647308417172117095

`A184441(A167614(n+2)+1)`
-/

namespace A184443.P16647308417172117095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167614 (n + 2) + 1).toNat

end

end A184443.P16647308417172117095

/-! ## A184443.P9390157249441335798

`A184441(A166136(n+2)-2)`
-/

namespace A184443.P9390157249441335798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A166136 (n + 2) - 2).toNat

end

end A184443.P9390157249441335798

/-! ## A184443.P15997170301542328297

`A184441(A253145(n+2)+4)`
-/

namespace A184443.P15997170301542328297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A253145 (n + 2) + 4).toNat

end

end A184443.P15997170301542328297

/-! ## A184443.P5110509256808823844

`A184441(A166136(n+1)+1+n)`
-/

namespace A184443.P5110509256808823844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A184443.P5110509256808823844

/-!
# A184444: Number of strings of numbers x(i=1..5) in 0..n with sum i*x(i)^2 equal to n*25.

The programs for A184444, there is no canonical definition to state claims against.
-/

/-! ## A184444.P13169872423620568415

`A184441(∑[n+4]+11)`
-/

namespace A184444.P13169872423620568415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A184444.P13169872423620568415

/-! ## A184444.P2205811343426092764

`A184441(A167499(n+3))+A000007(n+1)`
-/

namespace A184444.P2205811343426092764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167499 (n + 3)).toNat + A000007 (n + 1)

end

end A184444.P2205811343426092764

/-! ## A184444.P718827125786397457

`A184441(A167499(n+3))+A000035(2*n)`
-/

namespace A184444.P718827125786397457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167499 (n + 3)).toNat + A000035 (2 * n)

end

end A184444.P718827125786397457

/-! ## A184444.P5541281936345792601

`A184441(A167499(n+3))%A025507(n+1)`
-/

namespace A184444.P5541281936345792601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184441 (A167499 (n + 3)).toNat) (A025507 (n + 1))

end

end A184444.P5541281936345792601

/-! ## A184444.P3388280599801584778

`A001221(A055377(n+4))*A184441(A167499(n+3))`
-/

namespace A184444.P3388280599801584778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055377 (n + 4)).toNat * A184441 (A167499 (n + 3)).toNat

end

end A184444.P3388280599801584778

/-!
# A184445: Number of strings of numbers x(i=1..6) in 0..n with sum i*x(i)^2 equal to n*36.

The programs for A184445, there is no canonical definition to state claims against.
-/

/-! ## A184445.P7911619239983333887

`A184441(A166136(n+4))`
-/

namespace A184445.P7911619239983333887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A166136 (n + 4)).toNat

end

end A184445.P7911619239983333887

/-! ## A184445.P15679361196564597170

`A184441(A056115(n)+21)`
-/

namespace A184445.P15679361196564597170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A056115 n + 21).toNat

end

end A184445.P15679361196564597170

/-! ## A184445.P8113210223003472706

`A184441(A167499(n+4)+1)`
-/

namespace A184445.P8113210223003472706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167499 (n + 4) + 1).toNat

end

end A184445.P8113210223003472706

/-! ## A184445.P10036392685665367146

`A184441(A000217(n+5)+6)`
-/

namespace A184445.P10036392685665367146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000217 (n + 5) + 6).toNat

end

end A184445.P10036392685665367146

/-! ## A184445.P12157720530314184655

`A184441(A027379(n+3)+9)`
-/

namespace A184445.P12157720530314184655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A027379 (n + 3) + 9).toNat

end

end A184445.P12157720530314184655

/-!
# A184446: Number of strings of numbers x(i=1..7) in 0..n with sum i*x(i)^2 equal to n*49.

The programs for A184446, there is no canonical definition to state claims against.
-/

/-! ## A184446.P14425884875227589340

`A184441(A167499(n+5)+2)`
-/

namespace A184446.P14425884875227589340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167499 (n + 5) + 2).toNat

end

end A184446.P14425884875227589340

/-! ## A184446.P15143729473087141915

`A184441(A167614(n+5)+4)`
-/

namespace A184446.P15143729473087141915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A167614 (n + 5) + 4).toNat

end

end A184446.P15143729473087141915

/-! ## A184446.P14456210846305698322

`A184441(A000217(n+6)+7)`
-/

namespace A184446.P14456210846305698322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000217 (n + 6) + 7).toNat

end

end A184446.P14456210846305698322

/-! ## A184446.P13941553915076099833

`A184441(A027379(n+4)+10)`
-/

namespace A184446.P13941553915076099833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A027379 (n + 4) + 10).toNat

end

end A184446.P13941553915076099833

/-! ## A184446.P17387765057725365887

`A184441(A155212(n+2)+15)`
-/

namespace A184446.P17387765057725365887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A155212 (n + 2) + 15).toNat

end

end A184446.P17387765057725365887

/-!
# A184447: Number of strings of numbers x(i=1..8) in 0..n with sum i*x(i)^2 equal to n*64.

The programs for A184447, there is no canonical definition to state claims against.
-/

/-! ## A184447.P16068905000514919168

`A184441(A000124(n+7)+7)`
-/

namespace A184447.P16068905000514919168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000124 (n + 7) + 7).toNat

end

end A184447.P16068905000514919168

/-! ## A184447.P10153478367155921167

`A184441(A000096(n+6)+9)`
-/

namespace A184447.P10153478367155921167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000096 (n + 6) + 9).toNat

end

end A184447.P10153478367155921167

/-! ## A184447.P795705610873451218

`A184441(A000217(n+7)+8)`
-/

namespace A184447.P795705610873451218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A000217 (n + 7) + 8).toNat

end

end A184447.P795705610873451218

/-! ## A184447.P5422560051384216193

`A184441(A134869(n+8)-(n+1))`
-/

namespace A184447.P5422560051384216193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A134869 (n + 8) - (n + 1 : ℤ)).toNat

end

end A184447.P5422560051384216193

/-! ## A184447.P6539195817563294313

`A184441(A056000(n+5)+1-2*n)`
-/

namespace A184447.P6539195817563294313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184441 (A056000 (n + 5) + 1 - (2 * n : ℤ)).toNat

end

end A184447.P6539195817563294313

/-!
# A184448: 1/36 the number of (n+2) X (n+2) 0..2 arrays with each 3 X 3 subblock containing two of one value, two of another, and five of the last.

The programs for A184448, there is no canonical definition to state claims against.
-/

/-! ## A184448.P15879593334838182591

`A184457(∑[4*n]+1)`
-/

namespace A184448.P15879593334838182591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184448.P15879593334838182591

/-! ## A184448.P17070520090844079277

`or(char[2], A184457(A001844(n)))`
-/

namespace A184448.P17070520090844079277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184457 (A001844 n).toNat)

end

end A184448.P17070520090844079277

/-! ## A184448.P12984124529903826748

`record[gcd(A003987(n), A184457(n+1))]`
-/

namespace A184448.P12984124529903826748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A184457 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184448.P12984124529903826748

/-!
# A184449: 1/36 the number of (n+2) X 3 0..2 arrays with each 3 X 3 subblock containing two of one value, two of another, and five of the last.

The programs for A184449, there is no canonical definition to state claims against.
-/

/-! ## A184449.P18446231325889524824

`A184457(∑[n]+1)`
-/

namespace A184449.P18446231325889524824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184449.P18446231325889524824

/-! ## A184449.P8821117865966435228

`record[A184457(n+1)]`
-/

namespace A184449.P8821117865966435228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184449.P8821117865966435228

/-! ## A184449.P15343109765155353714

`lcm(3, A184457(A000124(n)))`
-/

namespace A184449.P15343109765155353714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184457 (A000124 n).toNat)

end

end A184449.P15343109765155353714

/-! ## A184449.P12866184182891057171

`A184457(A000124(n))+A025438(n)`
-/

namespace A184449.P12866184182891057171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A000124 n).toNat + A025438 n

end

end A184449.P12866184182891057171

/-! ## A184449.P13441505592904652872

`A184457(A000124(n))+A025466(n)`
-/

namespace A184449.P13441505592904652872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A000124 n).toNat + A025466 n

end

end A184449.P13441505592904652872

/-!
# A184450: 1/36 the number of (n+2)X4 0..2 arrays with each 3X3 subblock containing two of one value, two of another, and five of the last.

The programs for A184450, there is no canonical definition to state claims against.
-/

/-! ## A184450.P18015282251877007251

`A184457(∑[n+1]+2)`
-/

namespace A184450.P18015282251877007251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184450.P18015282251877007251

/-! ## A184450.P15198202098971051067

`record[root(A184457(n+2), A046899(n))]`
-/

namespace A184450.P15198202098971051067
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184457 (n + 2) : ℝ) ^ (1 / (A046899 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184450.P15198202098971051067

/-! ## A184450.P8846931032767406113

`record[root(A184457(n+2), A259324(n))]`
-/

namespace A184450.P8846931032767406113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184457 (n + 2) : ℝ) ^ (1 / (A259324 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184450.P8846931032767406113

/-! ## A184450.P1895693353057672064

`record[A184457(abs(A201163(n)))]`
-/

namespace A184450.P1895693353057672064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184450.P1895693353057672064

/-! ## A184450.P16175754598354413126

`record[root(A184457(n+2), A184061(n+1))]`
-/

namespace A184450.P16175754598354413126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184457 (n + 2) : ℝ) ^ (1 / (A184061 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184450.P16175754598354413126

/-!
# A184451: 1/36 the number of (n+2)X5 0..2 arrays with each 3X3 subblock containing two of one value, two of another, and five of the last.

The programs for A184451, there is no canonical definition to state claims against.
-/

/-! ## A184451.P3222823057443450594

`A184457(∑[n+2]+4)`
-/

namespace A184451.P3222823057443450594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184451.P3222823057443450594

/-! ## A184451.P17573441994379446815

`A184457(A167614(n+1))+A025438(n)`
-/

namespace A184451.P17573441994379446815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A167614 (n + 1)).toNat + A025438 n

end

end A184451.P17573441994379446815

/-! ## A184451.P10075445556737234526

`A184457(A167614(n+1))+A025442(n)`
-/

namespace A184451.P10075445556737234526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A167614 (n + 1)).toNat + A025442 n

end

end A184451.P10075445556737234526

/-! ## A184451.P1569098957940972625

`A184457(A167614(n+1))+A178798(n)`
-/

namespace A184451.P1569098957940972625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A167614 (n + 1)).toNat + A178798 n

end

end A184451.P1569098957940972625

/-! ## A184451.P10207369564804301704

`A185245(n)+A184457(A167614(n+1))`
-/

namespace A184451.P10207369564804301704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n + A184457 (A167614 (n + 1)).toNat

end

end A184451.P10207369564804301704

/-!
# A184452: 1/36 the number of (n+2)X6 0..2 arrays with each 3X3 subblock containing two of one value, two of another, and five of the last.

The programs for A184452, there is no canonical definition to state claims against.
-/

/-! ## A184452.P3027687731925216620

`A184457(A141214(n)+7)`
-/

namespace A184452.P3027687731925216620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A141214 n + 7).toNat

end

end A184452.P3027687731925216620

/-! ## A184452.P589140048184255959

`A184457(A052905(n)+9)`
-/

namespace A184452.P589140048184255959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A052905 n + 9).toNat

end

end A184452.P589140048184255959

/-! ## A184452.P11884133249565124926

`A184457(A055999(n)+10)`
-/

namespace A184452.P11884133249565124926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A055999 n + 10).toNat

end

end A184452.P11884133249565124926

/-! ## A184452.P2032161255668944741

`A184457(eq[5, A066657(n)])`
-/

namespace A184452.P2032161255668944741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184452.P2032161255668944741

/-! ## A184452.P11288136309619674282

`A184457(A167614(n+2)+1)`
-/

namespace A184452.P11288136309619674282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A167614 (n + 2) + 1).toNat

end

end A184452.P11288136309619674282

/-!
# A184453: 1/36 the number of (n+2)X7 0..2 arrays with each 3X3 subblock containing two of one value, two of another, and five of the last.

The programs for A184453, there is no canonical definition to state claims against.
-/

/-! ## A184453.P13905008416714765581

`A184457(A167499(n+3))`
-/

namespace A184453.P13905008416714765581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A167499 (n + 3)).toNat

end

end A184453.P13905008416714765581

/-! ## A184453.P9590930948716135533

`A184457(A155212(n)+13)`
-/

namespace A184453.P9590930948716135533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A155212 n + 13).toNat

end

end A184453.P9590930948716135533

/-! ## A184453.P17835037624725575629

`A184457(A056000(n)+15)`
-/

namespace A184453.P17835037624725575629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A056000 n + 15).toNat

end

end A184453.P17835037624725575629

/-! ## A184453.P17934238126227255248

`A184457(eq[7, A066657(n)])`
-/

namespace A184453.P17934238126227255248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184453.P17934238126227255248

/-! ## A184453.P12251050353492981588

`A184457(A000124(n+4)+4)`
-/

namespace A184453.P12251050353492981588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A000124 (n + 4) + 4).toNat

end

end A184453.P12251050353492981588

/-!
# A184454: 1/36 the number of (n+2)X8 0..2 arrays with each 3X3 subblock containing two of one value, two of another, and five of the last.

The programs for A184454, there is no canonical definition to state claims against.
-/

/-! ## A184454.P9283615598743698551

`A184457(A374007(n+1))`
-/

namespace A184454.P9283615598743698551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A374007 (n + 1)).toNat

end

end A184454.P9283615598743698551

/-! ## A184454.P16188804117438285467

`A184457(A052905(n+3))`
-/

namespace A184454.P16188804117438285467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A052905 (n + 3)).toNat

end

end A184454.P16188804117438285467

/-! ## A184454.P638221595380894750

`A184457(A056119(n)+16)`
-/

namespace A184454.P638221595380894750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A056119 n + 16).toNat

end

end A184454.P638221595380894750

/-! ## A184454.P11899688726455774126

`A184457(eq[3, A219347(n)])`
-/

namespace A184454.P11899688726455774126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184454.P11899688726455774126

/-!
# A184455: 1/36 the number of (n+2) X 9 0..2 arrays with each 3 X 3 subblock containing two of one value, two of another, and five of the last.

The programs for A184455, there is no canonical definition to state claims against.
-/

/-! ## A184455.P7812411896721962291

`A184457(A374008(n+1))`
-/

namespace A184455.P7812411896721962291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A374008 (n + 1)).toNat

end

end A184455.P7812411896721962291

/-! ## A184455.P18281222937672593539

`A184457(A055999(n+4))`
-/

namespace A184455.P18281222937672593539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A055999 (n + 4)).toNat

end

end A184455.P18281222937672593539

/-! ## A184455.P12325264691946257283

`A184457(A056119(n)+28)`
-/

namespace A184455.P12325264691946257283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (A056119 n + 28).toNat

end

end A184455.P12325264691946257283

/-!
# A184456: 1/36 the number of (n+2)X10 0..2 arrays with each 3X3 subblock containing two of one value, two of another, and five of the last.

The programs for A184456, there is no canonical definition to state claims against.
-/

/-! ## A184456.P10218456545327881352

`A184457(C(n+9, 2)-n)`
-/

namespace A184456.P10218456545327881352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184457 (Nat.choose (n + 9) 2 - n)

end

end A184456.P10218456545327881352

/-!
# A184458: Half the number of (n+1)X(n+1) binary arrays with equal numbers of majority one 2X2 subblocks and majority zero 2X2 subblocks.

The programs for A184458, there is no canonical definition to state claims against.
-/

/-! ## A184458.P14667061152281909802

`A184467((n+1)²+n²)`
-/

namespace A184458.P14667061152281909802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 ((n + 1) ^ 2 + n ^ 2)

end

end A184458.P14667061152281909802

/-!
# A184459: Half the number of (n+1)X2 binary arrays with equal numbers of majority one 2X2 subblocks and majority zero 2X2 subblocks.

The programs for A184459, there is no canonical definition to state claims against.
-/

/-! ## A184459.P17378607469113254404

`A184467(∑[n]+1)`
-/

namespace A184459.P17378607469113254404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184459.P17378607469113254404

/-! ## A184459.P2093401271200824612

`record[root(A184467(n+1), A046899(n))]`
-/

namespace A184459.P2093401271200824612
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184467 (n + 1) : ℝ) ^ (1 / (A046899 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184459.P2093401271200824612

/-! ## A184459.P6585232823155684868

`record[root(A184467(n+1), A172991(n))]`
-/

namespace A184459.P6585232823155684868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184467 (n + 1) : ℝ) ^ (1 / (A172991 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184459.P6585232823155684868

/-! ## A184459.P18247773964420709528

`record[gcd(A002262(n), A184467(n+1))]`
-/

namespace A184459.P18247773964420709528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184467 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184459.P18247773964420709528

/-! ## A184459.P9750558725008814003

`record[A184467(n+1)/A299721(n+1)]`
-/

namespace A184459.P9750558725008814003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184467 (n + 1) : ℚ) / (A299721 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184459.P9750558725008814003

/-!
# A184460: Half the number of (n+1) X 3 binary arrays with equal numbers of majority one 2 X 2 subblocks and majority zero 2 X 2 subblocks.

The programs for A184460, there is no canonical definition to state claims against.
-/

/-! ## A184460.P685533965018814770

`A184467(∑[n+1]+2)`
-/

namespace A184460.P685533965018814770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184460.P685533965018814770

/-! ## A184460.P17354609070659389400

`record[root(A184467(n+2), A046899(n))]`
-/

namespace A184460.P17354609070659389400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184467 (n + 2) : ℝ) ^ (1 / (A046899 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184460.P17354609070659389400

/-! ## A184460.P13541465064288104084

`record[gcd(A002262(n), A184467(n+2))]`
-/

namespace A184460.P13541465064288104084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184467 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184460.P13541465064288104084

/-! ## A184460.P6859556648049811246

`A326292(n)+A184467(A000096(n+1))`
-/

namespace A184460.P6859556648049811246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A184467 (A000096 (n + 1)).toNat

end

end A184460.P6859556648049811246

/-! ## A184460.P10838756582343100214

`A152844(n)*A184467(A000096(n+1))`
-/

namespace A184460.P10838756582343100214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n * A184467 (A000096 (n + 1)).toNat

end

end A184460.P10838756582343100214

/-!
# A184461: Half the number of (n+1) X 4 binary arrays with equal numbers of majority one 2 X 2 subblocks and majority zero 2 X 2 subblocks.

The programs for A184461, there is no canonical definition to state claims against.
-/

/-! ## A184461.P779525881657608610

`A184467(∑[n+2]+4)`
-/

namespace A184461.P779525881657608610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184461.P779525881657608610

/-! ## A184461.P390247563270110105

`lcm(2, A184467(A167614(n+1)))`
-/

namespace A184461.P390247563270110105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184467 (A167614 (n + 1)).toNat)

end

end A184461.P390247563270110105

/-! ## A184461.P1835681448375190820

`A184467(A167614(n+1))*A271839(n)`
-/

namespace A184461.P1835681448375190820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A167614 (n + 1)).toNat * A271839 n

end

end A184461.P1835681448375190820

/-! ## A184461.P13538430679518780356

`or(A000038(n), A184467(A167614(n+1)))`
-/

namespace A184461.P13538430679518780356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184467 (A167614 (n + 1)).toNat)

end

end A184461.P13538430679518780356

/-! ## A184461.P15335470281942291026

`A184467(A167614(n+1))%A184464(n+1)`
-/

namespace A184461.P15335470281942291026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184467 (A167614 (n + 1)).toNat) (A184464 (n + 1))

end

end A184461.P15335470281942291026

/-!
# A184462: Half the number of (n+1) X 5 binary arrays with equal numbers of majority one 2 X 2 subblocks and majority zero 2 X 2 subblocks.

The programs for A184462, there is no canonical definition to state claims against.
-/

/-! ## A184462.P9559082937173034495

`A184467(A374004(n+1))`
-/

namespace A184462.P9559082937173034495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A374004 (n + 1)).toNat

end

end A184462.P9559082937173034495

/-! ## A184462.P2119940689071645582

`A184467(A052905(n)+9)`
-/

namespace A184462.P2119940689071645582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A052905 n + 9).toNat

end

end A184462.P2119940689071645582

/-! ## A184462.P9068815411244535296

`A184467(A055999(n)+10)`
-/

namespace A184462.P9068815411244535296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A055999 n + 10).toNat

end

end A184462.P9068815411244535296

/-! ## A184462.P7912118079326196441

`A184467(A167614(n+2)+1)`
-/

namespace A184462.P7912118079326196441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A167614 (n + 2) + 1).toNat

end

end A184462.P7912118079326196441

/-! ## A184462.P5680406726217185624

`A184467(Δ[A023545(n+1)-n²])`
-/

namespace A184462.P5680406726217185624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (f1 (n + 1) - f1 n).toNat

end

end A184462.P5680406726217185624

/-!
# A184463: Half the number of (n+1)X6 binary arrays with equal numbers of majority one 2X2 subblocks and majority zero 2X2 subblocks.

The programs for A184463, there is no canonical definition to state claims against.
-/

/-! ## A184463.P7768000015043482052

`A184467(A374005(n+1))`
-/

namespace A184463.P7768000015043482052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A374005 (n + 1)).toNat

end

end A184463.P7768000015043482052

/-! ## A184463.P4654185894428029665

`A184467(A167499(n+3))`
-/

namespace A184463.P4654185894428029665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A167499 (n + 3)).toNat

end

end A184463.P4654185894428029665

/-! ## A184463.P10771419110645761816

`A184467(A056000(n)+15)`
-/

namespace A184463.P10771419110645761816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A056000 n + 15).toNat

end

end A184463.P10771419110645761816

/-! ## A184463.P10985315006318562263

`A184467(eq[4, A193592(n)])`
-/

namespace A184463.P10985315006318562263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184463.P10985315006318562263

/-! ## A184463.P9366069998050413195

`A184467(Δ[A023545(n+1)])`
-/

namespace A184463.P9366069998050413195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (f1 (n + 1) - f1 n).toNat

end

end A184463.P9366069998050413195

/-!
# A184464: Half the number of (n+1)X7 binary arrays with equal numbers of majority one 2X2 subblocks and majority zero 2X2 subblocks.

The programs for A184464, there is no canonical definition to state claims against.
-/

/-! ## A184464.P12291373920997361015

`A184467(A374007(n+1))`
-/

namespace A184464.P12291373920997361015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A374007 (n + 1)).toNat

end

end A184464.P12291373920997361015

/-! ## A184464.P4747436904578328380

`A184467(eq[7, A131818(n+1)])`
-/

namespace A184464.P4747436904578328380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184464.P4747436904578328380

/-! ## A184464.P7941762244958187490

`A184467(Δ[A023545(n+1)]+10)`
-/

namespace A184464.P7941762244958187490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (f1 (n + 1) - f1 n + 10).toNat

end

end A184464.P7941762244958187490

/-! ## A184464.P13508723092600679050

`A184467(A000124(n+6)-(n+1))`
-/

namespace A184464.P13508723092600679050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A184464.P13508723092600679050

/-! ## A184464.P7490983862164769082

`A184467(eq[5, A193592(n)])`
-/

namespace A184464.P7490983862164769082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184464.P7490983862164769082

/-!
# A184465: Half the number of (n+1) X 8 binary arrays with equal numbers of majority one 2 X 2 subblocks and majority zero 2 X 2 subblocks.

The programs for A184465, there is no canonical definition to state claims against.
-/

/-! ## A184465.P13329582535622636937

`A184467(A374008(n+1))`
-/

namespace A184465.P13329582535622636937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A374008 (n + 1)).toNat

end

end A184465.P13329582535622636937

/-! ## A184465.P1815689692993957049

`A184467(eq[8, A131818(n+1)])`
-/

namespace A184465.P1815689692993957049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184465.P1815689692993957049

/-! ## A184465.P119799976681084173

`A184467(eq[6, A193592(n)])`
-/

namespace A184465.P119799976681084173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184465.P119799976681084173

/-! ## A184465.P3924381554422274211

`A184467(A000124(n+6)+n)`
-/

namespace A184465.P3924381554422274211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A184465.P3924381554422274211

/-!
# A184466: Half the number of (n+1)X9 binary arrays with equal numbers of majority one 2X2 subblocks and majority zero 2X2 subblocks.

The programs for A184466, there is no canonical definition to state claims against.
-/

/-! ## A184466.P7288992374890917755

`A184467(A374009(n+1))`
-/

namespace A184466.P7288992374890917755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (A374009 (n + 1)).toNat

end

end A184466.P7288992374890917755

/-! ## A184466.P7186653941195545221

`A184467(eq[9, A131818(n+1)])`
-/

namespace A184466.P7186653941195545221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184466.P7186653941195545221

/-! ## A184466.P2211710104267220834

`A184467(eq[7, A193592(n)])`
-/

namespace A184466.P2211710104267220834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184466.P2211710104267220834

/-!
# A184468: 1/6 the number of (n+2)X(n+2) 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184468, there is no canonical definition to state claims against.
-/

/-! ## A184468.P7116074135446135255

`A184477(∑[4*n]+1)`
-/

namespace A184468.P7116074135446135255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184468.P7116074135446135255

/-! ## A184468.P1598390519178848155

`or(1, A184477(A001844(n)))`
-/

namespace A184468.P1598390519178848155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184477 (A001844 n).toNat)

end

end A184468.P1598390519178848155

/-! ## A184468.P7012232920210324549

`record[gcd(A049581(n), A184477(n+1))]`
-/

namespace A184468.P7012232920210324549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A184477 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184468.P7012232920210324549

/-!
# A184469: 1/6 the number of (n+2) X 3 0..2 arrays with each 3 X 3 subblock containing one of one value, four of another, and four of the last.

The programs for A184469, there is no canonical definition to state claims against.
-/

/-! ## A184469.P907585642197477093

`A184477(∑[n]+1)`
-/

namespace A184469.P907585642197477093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184469.P907585642197477093

/-! ## A184469.P14365266384802814867

`record[A184477(n+1)]`
-/

namespace A184469.P14365266384802814867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184469.P14365266384802814867

/-! ## A184469.P2571204616442614032

`lcm(3, A184477(A000124(n)))`
-/

namespace A184469.P2571204616442614032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184477 (A000124 n).toNat)

end

end A184469.P2571204616442614032

/-! ## A184469.P18088228925823534858

`or(1, A184477(∑[A028310(n)]))`
-/

namespace A184469.P18088228925823534858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184477 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A184469.P18088228925823534858

/-! ## A184469.P17139706918336086754

`A184477(A000124(n))+A025437(n)`
-/

namespace A184469.P17139706918336086754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A000124 n).toNat + A025437 n

end

end A184469.P17139706918336086754

/-!
# A184470: 1/6 the number of (n+2)X4 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184470, there is no canonical definition to state claims against.
-/

/-! ## A184470.P2286790784342481763

`A184477(∑[n+1]+2)`
-/

namespace A184470.P2286790784342481763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184470.P2286790784342481763

/-! ## A184470.P14045627880920534359

`record[A184477(A183234(n+1))]`
-/

namespace A184470.P14045627880920534359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184470.P14045627880920534359

/-! ## A184470.P9518218871929300185

`record[A010054(n)*A184477(n+2)]`
-/

namespace A184470.P9518218871929300185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184470.P9518218871929300185

/-! ## A184470.P13874548666964634683

`record[gcd(A084938(n+1), A184477(n+3))]`
-/

namespace A184470.P13874548666964634683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 1)) (A184477 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184470.P13874548666964634683

/-! ## A184470.P5631242909283985157

`record[A184477(A198455(n+1))]`
-/

namespace A184470.P5631242909283985157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184470.P5631242909283985157

/-!
# A184471: 1/6 the number of (n+2)X5 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184471, there is no canonical definition to state claims against.
-/

/-! ## A184471.P3417132646870823470

`A184477(∑[n+2]+4)`
-/

namespace A184471.P3417132646870823470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184471.P3417132646870823470

/-! ## A184471.P17547251161770250207

`or(1, A184477(A167614(n+1)))`
-/

namespace A184471.P17547251161770250207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184477 (A167614 (n + 1)).toNat)

end

end A184471.P17547251161770250207

/-! ## A184471.P1609646708104649286

`record[A184477(n+4)/A240192(n+2)]`
-/

namespace A184471.P1609646708104649286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184477 (n + 4) : ℚ) / (A240192 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184471.P1609646708104649286

/-! ## A184471.P2025613760167411384

`A184477(A167614(n+1))+A025437(n)`
-/

namespace A184471.P2025613760167411384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A167614 (n + 1)).toNat + A025437 n

end

end A184471.P2025613760167411384

/-! ## A184471.P14466492460351749404

`A184477(A167614(n+1))+A025442(n)`
-/

namespace A184471.P14466492460351749404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A167614 (n + 1)).toNat + A025442 n

end

end A184471.P14466492460351749404

/-!
# A184472: 1/6 the number of (n+2)X6 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184472, there is no canonical definition to state claims against.
-/

/-! ## A184472.P2192148108840228103

`A184477(∑[n+5]+5-2*n)`
-/

namespace A184472.P2192148108840228103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A184472.P2192148108840228103

/-! ## A184472.P2903556352416838548

`A184477(A052905(n)+9)+A063524(3*n)`
-/

namespace A184472.P2903556352416838548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A052905 n + 9).toNat + A063524 (3 * n)

end

end A184472.P2903556352416838548

/-! ## A184472.P2239314906269735614

`or(1, A184477(A027379(n+2)))`
-/

namespace A184472.P2239314906269735614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184477 (A027379 (n + 2)).toNat)

end

end A184472.P2239314906269735614

/-! ## A184472.P1714515997560232303

`A184477(A056000(n)+7)+char[21]`
-/

namespace A184472.P1714515997560232303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184472.P1714515997560232303

/-! ## A184472.P17774510809259734630

`A184477(A027379(n+2))%A038449(n+1)`
-/

namespace A184472.P17774510809259734630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184477 (A027379 (n + 2)).toNat) (A038449 (n + 1))

end

end A184472.P17774510809259734630

/-!
# A184473: 1/6 the number of (n+2)X7 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184473, there is no canonical definition to state claims against.
-/

/-! ## A184473.P2840173713344344507

`A184477(A155212(n)+13)`
-/

namespace A184473.P2840173713344344507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A155212 n + 13).toNat

end

end A184473.P2840173713344344507

/-! ## A184473.P1595900484404186303

`A184477(A056000(n)+15)`
-/

namespace A184473.P1595900484404186303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A056000 n + 15).toNat

end

end A184473.P1595900484404186303

/-! ## A184473.P7029668264920661682

`A184477(eq[7, A066657(n)])`
-/

namespace A184473.P7029668264920661682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184473.P7029668264920661682

/-! ## A184473.P10611243746485592144

`A184477(A167614(n+3)+2)`
-/

namespace A184473.P10611243746485592144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A167614 (n + 3) + 2).toNat

end

end A184473.P10611243746485592144

/-! ## A184473.P12450444730992264286

`A184477(A000217(n+4)+5)`
-/

namespace A184473.P12450444730992264286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A000217 (n + 4) + 5).toNat

end

end A184473.P12450444730992264286

/-!
# A184474: 1/6 the number of (n+2)X8 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184474, there is no canonical definition to state claims against.
-/

/-! ## A184474.P12597664300636782628

`A184477(A166136(n+4))`
-/

namespace A184474.P12597664300636782628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A166136 (n + 4)).toNat

end

end A184474.P12597664300636782628

/-! ## A184474.P11034908971495776845

`A184477(A056115(n)+21)`
-/

namespace A184474.P11034908971495776845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A056115 n + 21).toNat

end

end A184474.P11034908971495776845

/-! ## A184474.P1006679293819622441

`A184477(Δ[A264443(n)]+10)`
-/

namespace A184474.P1006679293819622441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (f1 (n + 1) - f1 n + 10).toNat

end

end A184474.P1006679293819622441

/-! ## A184474.P15489224612503396646

`A184477(A167499(n+4)+1)`
-/

namespace A184474.P15489224612503396646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A167499 (n + 4) + 1).toNat

end

end A184474.P15489224612503396646

/-! ## A184474.P4446476432480034569

`A184477(A000096(n+4)+7)`
-/

namespace A184474.P4446476432480034569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A000096 (n + 4) + 7).toNat

end

end A184474.P4446476432480034569

/-!
# A184475: 1/6 the number of (n+2)X9 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184475, there is no canonical definition to state claims against.
-/

/-! ## A184475.P5615214098180316543

`A184477(A374008(n+1))`
-/

namespace A184475.P5615214098180316543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A374008 (n + 1)).toNat

end

end A184475.P5615214098180316543

/-! ## A184475.P14177646807300945408

`A184477(A055999(n+4))`
-/

namespace A184475.P14177646807300945408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A055999 (n + 4)).toNat

end

end A184475.P14177646807300945408

/-! ## A184475.P12625848294916143804

`A184477(A056119(n)+28)`
-/

namespace A184475.P12625848294916143804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A056119 n + 28).toNat

end

end A184475.P12625848294916143804

/-!
# A184476: 1/6 the number of (n+2)X10 0..2 arrays with each 3X3 subblock containing one of one value, four of another, and four of the last.

The programs for A184476, there is no canonical definition to state claims against.
-/

/-! ## A184476.P16097578007100217313

`A184477(A374009(n+1))`
-/

namespace A184476.P16097578007100217313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184477 (A374009 (n + 1)).toNat

end

end A184476.P16097578007100217313

/-!
# A184478: Lower s-Wythoff sequence, where s(n) = 3n + 1. Complement of A184479.

The programs for A184478, there is no canonical definition to state claims against.
-/

/-! ## A184478.P7301608069492521179

`comp[A184485(n+1)-2]`
-/

namespace A184478.P7301608069492521179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184478.P7301608069492521179

/-! ## A184478.P8237074036022157707

`A184479(n+1)-A016777(n+1)`
-/

namespace A184478.P8237074036022157707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184479 (n + 1) - A016777 (n + 1)

end

end A184478.P8237074036022157707

/-! ## A184478.P16858649780838659105

`A184484(n+2)-2`
-/

namespace A184478.P16858649780838659105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 2) - 2

end

end A184478.P16858649780838659105

/-! ## A184478.P5311028643130795058

`A184485(n+2)-3*(n+2)`
-/

namespace A184478.P5311028643130795058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 2) - (3 * (n + 2) : ℤ)

end

end A184478.P5311028643130795058

/-! ## A184478.P12187734517350623146

`∑[A001222(Δ[A184484(n+1)])]+n`
-/

namespace A184478.P12187734517350623146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184478.P12187734517350623146

/-! ## A184478.P9030499431794943688

`∑[A116579(Δ[A184485(n+1)]+1)]-1`
-/

namespace A184478.P9030499431794943688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A184478.P9030499431794943688

/-! ## A184478.P8856413222025683588

`eq[1, A284368(n+2)]`
-/

namespace A184478.P8856413222025683588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284368 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184478.P8856413222025683588

/-! ## A184478.P10990560776309949177

`record[n-(A284368(n+2)-A284368(n+1))]`
-/

namespace A184478.P10990560776309949177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A284368 (n + 2) - A284368 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184478.P10990560776309949177

/-! ## A184478.P11508147733155284087

`A023444(A184484(n+2))`
-/

namespace A184478.P11508147733155284087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A184484 (n + 2)).toNat

end

end A184478.P11508147733155284087

/-! ## A184478.P6617333884124305521

`record[A233583(n+1)-A284368(n+1)]`
-/

namespace A184478.P6617333884124305521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A284368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184478.P6617333884124305521

/-!
# A184479: Upper s-Wythoff sequence, where s(n)=3n+1. Complement of A184478.

The programs for A184479, there is no canonical definition to state claims against.
-/

/-! ## A184479.P3885476307635871954

`A184478(n+1)+3*n+4`
-/

namespace A184479.P3885476307635871954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184478 (n + 1) + (3 * n + 4 : ℤ)

end

end A184479.P3885476307635871954

/-! ## A184479.P14380333208097346313

`A184485(n+2)-2`
-/

namespace A184479.P14380333208097346313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 2) - 2

end

end A184479.P14380333208097346313

/-! ## A184479.P14749089916443838877

`∑[abs(Δ[A184485(n+1)])]`
-/

namespace A184479.P14749089916443838877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184479.P14749089916443838877

/-! ## A184479.P10350854444889436679

`∑[Δ[A184484(n+1)]+3]`
-/

namespace A184479.P10350854444889436679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184479.P10350854444889436679

/-! ## A184479.P16835310122692566539

`A184484(n+2)+3*n+2`
-/

namespace A184479.P16835310122692566539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 2) + (3 * n + 2 : ℤ)

end

end A184479.P16835310122692566539

/-! ## A184479.P6710544639024545765

`∑[A184486(Δ[A184485(n+1)])]`
-/

namespace A184479.P6710544639024545765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184479.P6710544639024545765

/-! ## A184479.P17052117219500156907

`A008585(n+1)+A184484(n+2)-1`
-/

namespace A184479.P17052117219500156907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + (A184484 (n + 2) - 1)

end

end A184479.P17052117219500156907

/-! ## A184479.P4027701182646500178

`A016777(n+1)+A184484(n+2)-2`
-/

namespace A184479.P4027701182646500178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) + (A184484 (n + 2) - 2)

end

end A184479.P4027701182646500178

/-! ## A184479.P9688615065621360329

`A005843(n+1)+A184484(n+2)+n`
-/

namespace A184479.P9688615065621360329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A184484 (n + 2) + (n : ℤ))

end

end A184479.P9688615065621360329

/-! ## A184479.P8481786711131886066

`n+1+A184478(n+1)+Δ[A000290(n+1)]`
-/

namespace A184479.P8481786711131886066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A184478 (n + 1) + (f1 (n + 1) - f1 n))

end

end A184479.P8481786711131886066

/-! ## A184479.P2880540908659156188

`A023444(A184485(n+2))`
-/

namespace A184479.P2880540908659156188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A184485 (n + 2)).toNat

end

end A184479.P2880540908659156188

/-! ## A184479.P11127820032900798156

`eq[A000007(n), A284368(n+2)]`
-/

namespace A184479.P11127820032900798156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284368 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184479.P11127820032900798156

/-! ## A184479.P11291330222981456255

`A284368(A001956(n+1)+2)+A001956(n+1)`
-/

namespace A184479.P11291330222981456255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284368 (A001956 (n + 1) + 2).toNat + A001956 (n + 1)

end

end A184479.P11291330222981456255

/-! ## A184479.P12154568892026241896

`A026741(A008458(n+1))+A184478(n+1)+1`
-/

namespace A184479.P12154568892026241896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008458 (n + 1)).toNat + (A184478 (n + 1) + 1)

end

end A184479.P12154568892026241896

/-!
# A184480: Lower s-Wythoff sequence, where s(n)=3n. Complement of A001956.

The programs for A184480, the canonical program `A184480.P6499280255303279041` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184480 has offset 1).

The definition of A184480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184480.P11885691966822601979

`comp[A284678(n+1)-2]`
-/

namespace A184480.P11885691966822601979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184480.P11885691966822601979

namespace A184480

/-- `comp[A284678(n+1)-2]` -/
def P11885691966822601979.Spec : Prop :=
  ∀ n, (P11885691966822601979.a n : ℤ) = A184480 (n + 1)

end A184480

/-! ## A184480.P10409081327129202522

`comp[A001956(n+1)-1]+1`
-/

namespace A184480.P10409081327129202522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184480.P10409081327129202522

namespace A184480

/-- `comp[A001956(n+1)-1]+1` -/
def P10409081327129202522.Spec : Prop :=
  ∀ n, (P10409081327129202522.a n : ℤ) = A184480 (n + 1)

end A184480

/-! ## A184480.P15884308158662777526

`comp[A080081(n+1)+n]+1`
-/

namespace A184480.P15884308158662777526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080081 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184480.P15884308158662777526

namespace A184480

/-- `comp[A080081(n+1)+n]+1` -/
def P15884308158662777526.Spec : Prop :=
  ∀ n, (P15884308158662777526.a n : ℤ) = A184480 (n + 1)

end A184480

/-! ## A184480.P6499280255303279041

`A080600(n+1)-(2*n+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184480

/-- `A080600(n+1)-(2*n+3)` -/
def P6499280255303279041.Spec : Prop :=
  ∀ n, P6499280255303279041.a n = A184480 (n + 1)

theorem P6499280255303279041.correct : P6499280255303279041.Spec := by
  intro n
  simp only [A184480, Nat.add_sub_cancel]

end A184480

/-! ## A184480.P7166359222754143488

`A080081(n+1)+2*A001478(n+1)`
-/

namespace A184480.P7166359222754143488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080081 (n + 1) + 2 * A001478 (n + 1)

end

end A184480.P7166359222754143488

namespace A184480

/-- `A080081(n+1)+2*A001478(n+1)` -/
def P7166359222754143488.Spec : Prop :=
  ∀ n, P7166359222754143488.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P4950331600015741317

`A284676(n+2)-2`
-/

namespace A184480.P4950331600015741317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 2) - 2

end

end A184480.P4950331600015741317

namespace A184480

/-- `A284676(n+2)-2` -/
def P4950331600015741317.Spec : Prop :=
  ∀ n, P4950331600015741317.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P9677919653244016519

`A284679(n+2)-2`
-/

namespace A184480.P9677919653244016519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 2) - 2

end

end A184480.P9677919653244016519

namespace A184480

/-- `A284679(n+2)-2` -/
def P9677919653244016519.Spec : Prop :=
  ∀ n, P9677919653244016519.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P17363198566486127385

`∑[abs(Δ[A284676(n+1)])]`
-/

namespace A184480.P17363198566486127385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P17363198566486127385

namespace A184480

/-- `∑[abs(Δ[A284676(n+1)])]` -/
def P17363198566486127385.Spec : Prop :=
  ∀ n, P17363198566486127385.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P8676899719463490371

`A284675(n+2)-(3*n+5)`
-/

namespace A184480.P8676899719463490371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 2) - (3 * n + 5 : ℤ)

end

end A184480.P8676899719463490371

namespace A184480

/-- `A284675(n+2)-(3*n+5)` -/
def P8676899719463490371.Spec : Prop :=
  ∀ n, P8676899719463490371.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P3617441723188595912

`A284678(n+2)-(3*n+5)`
-/

namespace A184480.P3617441723188595912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 2) - (3 * n + 5 : ℤ)

end

end A184480.P3617441723188595912

namespace A184480

/-- `A284678(n+2)-(3*n+5)` -/
def P3617441723188595912.Spec : Prop :=
  ∀ n, P3617441723188595912.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P7233050297525517115

`∑[A000005(Δ[A284676(n+1)])]`
-/

namespace A184480.P7233050297525517115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P7233050297525517115

namespace A184480

/-- `∑[A000005(Δ[A284676(n+1)])]` -/
def P7233050297525517115.Spec : Prop :=
  ∀ n, P7233050297525517115.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P2099957727493303440

`∑[A000041(Δ[A284676(n+1)])]`
-/

namespace A184480.P2099957727493303440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P2099957727493303440

namespace A184480

/-- `∑[A000041(Δ[A284676(n+1)])]` -/
def P2099957727493303440.Spec : Prop :=
  ∀ n, P2099957727493303440.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P1958670811691353191

`∑[A014963(Δ[A284676(n+1)])]`
-/

namespace A184480.P1958670811691353191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P1958670811691353191

namespace A184480

/-- `∑[A014963(Δ[A284676(n+1)])]` -/
def P1958670811691353191.Spec : Prop :=
  ∀ n, P1958670811691353191.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P4619908591521802567

`∑[A284650(Δ[A284676(n+1)])]`
-/

namespace A184480.P4619908591521802567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284650 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P4619908591521802567

namespace A184480

/-- `∑[A284650(Δ[A284676(n+1)])]` -/
def P4619908591521802567.Spec : Prop :=
  ∀ n, P4619908591521802567.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P7119051845846710355

`∑[A284651(Δ[A284676(n+1)])]`
-/

namespace A184480.P7119051845846710355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284651 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P7119051845846710355

namespace A184480

/-- `∑[A284651(Δ[A284676(n+1)])]` -/
def P7119051845846710355.Spec : Prop :=
  ∀ n, P7119051845846710355.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P6608600282015075631

`∑[A284694(Δ[A284676(n+1)])]`
-/

namespace A184480.P6608600282015075631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P6608600282015075631

namespace A184480

/-- `∑[A284694(Δ[A284676(n+1)])]` -/
def P6608600282015075631.Spec : Prop :=
  ∀ n, P6608600282015075631.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P13380671554711743817

`∑[A336112(Δ[A284678(n+1)])-2]`
-/

namespace A184480.P13380671554711743817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (f2 (n + 1) - f2 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184480.P13380671554711743817

namespace A184480

/-- `∑[A336112(Δ[A284678(n+1)])-2]` -/
def P13380671554711743817.Spec : Prop :=
  ∀ n, P13380671554711743817.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P4886183071241713579

`A023444(A284676(n+2))`
-/

namespace A184480.P4886183071241713579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A284676 (n + 2)).toNat

end

end A184480.P4886183071241713579

namespace A184480

/-- `A023444(A284676(n+2))` -/
def P4886183071241713579.Spec : Prop :=
  ∀ n, P4886183071241713579.a n = A184480 (n + 1)

end A184480

/-! ## A184480.P15360603100583883118

`A023444(A284679(n+2))`
-/

namespace A184480.P15360603100583883118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A284679 (n + 2)).toNat

end

end A184480.P15360603100583883118

namespace A184480

/-- `A023444(A284679(n+2))` -/
def P15360603100583883118.Spec : Prop :=
  ∀ n, P15360603100583883118.a n = A184480 (n + 1)

end A184480

/-!
# A184481: Semiprime centered triangular numbers.

The programs for A184481, there is no canonical definition to state claims against.
-/

/-! ## A184481.P15819273223273747521

`filter[A005448(n+1), A064911(#)]`
-/

namespace A184481.P15819273223273747521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A184481.P15819273223273747521

/-! ## A184481.P1011288051236897550

`filter[A381647(n+1), A064911(#)]`
-/

namespace A184481.P1011288051236897550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A184481.P1011288051236897550

/-! ## A184481.P2221455346809381376

`filter[A131355(2*n), A064911(#)]`
-/

namespace A184481.P2221455346809381376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A184481.P2221455346809381376

/-! ## A184481.P970009663612888365

`filter[A058212(3*n), A064911(#)]`
-/

namespace A184481.P970009663612888365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A184481.P970009663612888365

/-! ## A184481.P12630816461029236748

`filter[A181482(3*n+1), A064911(#)]`
-/

namespace A184481.P12630816461029236748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181482 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A184481.P12630816461029236748

/-! ## A184481.P12498454934595072134

`filter[A222591(3*(n+1)), A064911(#)]`
-/

namespace A184481.P12498454934595072134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222591 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A184481.P12498454934595072134

/-! ## A184481.P16737661465293714506

`filter[A239438(3*n+1), A064911(#)]`
-/

namespace A184481.P16737661465293714506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239438 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A184481.P16737661465293714506

/-! ## A184481.P18428387451773585974

`3*C(eq[3, A001222(A242658(n))], 2)+1`
-/

namespace A184481.P18428387451773585974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A242658 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A184481.P18428387451773585974

/-! ## A184481.P240538775078598796

`A005448(eq[3, A001222(A242658(n))])`
-/

namespace A184481.P240538775078598796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A242658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184481.P240538775078598796

/-! ## A184481.P11612918189479510611

`∩[A005448(n+1), A131368(n+1)]`
-/

namespace A184481.P11612918189479510611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184481.P11612918189479510611

/-!
# A184482: Lower s-Wythoff sequence, where s(n)=3n-1. Complement of A184483.

The programs for A184482, there is no canonical definition to state claims against.
-/

/-! ## A184482.P11959425589474123606

`comp[A184483(n+1)-1]+1`
-/

namespace A184482.P11959425589474123606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184483 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184482.P11959425589474123606

/-! ## A184482.P2692982365377185230

`A080667(n+1)-2*(n+1)`
-/

namespace A184482.P2692982365377185230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080667 (n + 1) - (2 * (n + 1) : ℤ)

end

end A184482.P2692982365377185230

/-! ## A184482.P17516329726371864597

`A184483(n+1)-A016789(n)`
-/

namespace A184482.P17516329726371864597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184483 (n + 1) - A016789 n

end

end A184482.P17516329726371864597

/-! ## A184482.P17892397328691922259

`∑[Δ[A081834(n+1)]-2]`
-/

namespace A184482.P17892397328691922259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P17892397328691922259

/-! ## A184482.P732487653142449133

`A081834(n+2)-(2*n+3)`
-/

namespace A184482.P732487653142449133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 2) - (2 * n + 3 : ℤ)

end

end A184482.P732487653142449133

/-! ## A184482.P14136885359487461157

`∑[A000055(Δ[A081834(n+1)])]`
-/

namespace A184482.P14136885359487461157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P14136885359487461157

/-! ## A184482.P3485050385549912466

`∑[A000071(Δ[A081834(n+1)])]`
-/

namespace A184482.P3485050385549912466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P3485050385549912466

/-! ## A184482.P11276896187573517291

`∑[A000073(Δ[A081834(n+1)])]`
-/

namespace A184482.P11276896187573517291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P11276896187573517291

/-! ## A184482.P13223417130446975838

`∑[A000196(Δ[A081834(n+1)])]`
-/

namespace A184482.P13223417130446975838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P13223417130446975838

/-! ## A184482.P9876233463231904974

`∑[A000672(Δ[A081834(n+1)])]`
-/

namespace A184482.P9876233463231904974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000672 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P9876233463231904974

/-! ## A184482.P15655492116154896398

`∑[A001222(Δ[A081834(n+1)])]`
-/

namespace A184482.P15655492116154896398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P15655492116154896398

/-! ## A184482.P16400034089774047311

`∑[A007318(Δ[A081834(n+1)])]`
-/

namespace A184482.P16400034089774047311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P16400034089774047311

/-! ## A184482.P11793132243135946098

`∑[A110249(Δ[A081834(n+1)])]`
-/

namespace A184482.P11793132243135946098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110249 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P11793132243135946098

/-! ## A184482.P15518625851591208476

`∑[A173173(Δ[A081834(n+1)])]`
-/

namespace A184482.P15518625851591208476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P15518625851591208476

/-! ## A184482.P14972640588437626157

`∑[A337259(Δ[A081834(n+1)]²)]`
-/

namespace A184482.P14972640588437626157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337259 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P14972640588437626157

/-! ## A184482.P14748267513609887732

`∑[A008683(Δ[A081834(n+1)])+2]`
-/

namespace A184482.P14748267513609887732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P14748267513609887732

/-! ## A184482.P8060585105180236790

`∑[A337259(Δ[2*A081834(n+1)])]`
-/

namespace A184482.P8060585105180236790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337259 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184482.P8060585105180236790

/-!
# A184483: Upper s-Wythoff sequence, where s(n)=3n-1. Complement of A184482.

The programs for A184483, there is no canonical definition to state claims against.
-/

/-! ## A184483.P4971071404883193530

`A080667(n+1)+n`
-/

namespace A184483.P4971071404883193530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080667 (n + 1) + (n : ℤ)

end

end A184483.P4971071404883193530

/-! ## A184483.P12771776900122985173

`A184482(n+1)+3*n+2`
-/

namespace A184483.P12771776900122985173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 (n + 1) + (3 * n + 2 : ℤ)

end

end A184483.P12771776900122985173

/-! ## A184483.P4827576217958010362

`A081834(n+2)-1+n`
-/

namespace A184483.P4827576217958010362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 2) - 1 + (n : ℤ)

end

end A184483.P4827576217958010362

/-! ## A184483.P3975583492513144492

`∑[abs(Δ[A081834(n+1)])]+n`
-/

namespace A184483.P3975583492513144492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184483.P3975583492513144492

/-! ## A184483.P10909605821441662147

`A284386(A184484(n+1))+A184485(n+1)`
-/

namespace A184483.P10909605821441662147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284386 (A184484 (n + 1)).toNat + A184485 (n + 1)

end

end A184483.P10909605821441662147

/-! ## A184483.P13769593768817014074

`floor(A184485(2*(n+1))/2)`
-/

namespace A184483.P13769593768817014074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184485 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184483.P13769593768817014074

/-! ## A184483.P6080776511795231063

`floor(A284675(3*(n+1))/3)`
-/

namespace A184483.P6080776511795231063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284675 (3 * (n + 1)) : ℚ) / 3⌋

end

end A184483.P6080776511795231063

/-! ## A184483.P4770974973616394789

`floor(A284678(3*(n+1))/3)`
-/

namespace A184483.P4770974973616394789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284678 (3 * (n + 1)) : ℚ) / 3⌋

end

end A184483.P4770974973616394789

/-! ## A184483.P10622196912839403785

`ceil(A001956(3*n+2)/3)`
-/

namespace A184483.P10622196912839403785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001956 (3 * n + 2) : ℚ) / 3⌉

end

end A184483.P10622196912839403785

/-! ## A184483.P356185986335408846

`A001956(n+1)-A284677(3*n+4)`
-/

namespace A184483.P356185986335408846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1) - A284677 (3 * n + 4)

end

end A184483.P356185986335408846

/-! ## A184483.P9580964628696289979

`A184478(A080667(n+1))`
-/

namespace A184483.P9580964628696289979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184478 (A080667 (n + 1)).toNat

end

end A184483.P9580964628696289979

/-! ## A184483.P10375625329905516861

`A023443(A081834(n+2))+n`
-/

namespace A184483.P10375625329905516861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081834 (n + 2)).toNat + (n : ℤ)

end

end A184483.P10375625329905516861

/-! ## A184483.P3700378403202264

`lt[A284386(n+1), 1]+1`
-/

namespace A184483.P3700378403202264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284386 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A184483.P3700378403202264

/-! ## A184483.P10947992168680142831

`A001956(n+1)-A284386(A001956(n+1))`
-/

namespace A184483.P10947992168680142831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1) - A284386 (A001956 (n + 1)).toNat

end

end A184483.P10947992168680142831

/-! ## A184483.P630230391489491255

`A184484(A184485(n+1)+1)-A184484(n+1)`
-/

namespace A184483.P630230391489491255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (A184485 (n + 1) + 1).toNat - A184484 (n + 1)

end

end A184483.P630230391489491255

/-! ## A184483.P12124535615512051278

`A008619(A184479(Δ[n²]))`
-/

namespace A184483.P12124535615512051278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A184483.P12124535615512051278

/-! ## A184483.P13075488262757439609

`A008619(A184485(2*(n+1))-2)`
-/

namespace A184483.P13075488262757439609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184485 (2 * (n + 1)) - 2).toNat

end

end A184483.P13075488262757439609

/-! ## A184483.P8701318737761286795

`A001956(n+1)-A284368(2*A001956(n+1))`
-/

namespace A184483.P8701318737761286795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1) - A284368 (2 * A001956 (n + 1)).toNat

end

end A184483.P8701318737761286795

/-!
# A184484: Lower s-Wythoff sequence, where s(n)=3n-2. Complement of A184485.

The programs for A184484, there is no canonical definition to state claims against.
-/

/-! ## A184484.P10439719697714915083

`comp[A184485(n+1)-1]+1`
-/

namespace A184484.P10439719697714915083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184484.P10439719697714915083

/-! ## A184484.P9522452881236019275

`A184485(n+1)-A016777(n)`
-/

namespace A184484.P9522452881236019275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184485 (n + 1) - A016777 n

end

end A184484.P9522452881236019275

/-! ## A184484.P9066831638098747576

`∑[Δ[A081842(n+1)]-2]`
-/

namespace A184484.P9066831638098747576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081842 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184484.P9066831638098747576

/-! ## A184484.P11013156505404092616

`A081842(n+2)-2*(n+1)`
-/

namespace A184484.P11013156505404092616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081842 (n + 2) - (2 * (n + 1) : ℤ)

end

end A184484.P11013156505404092616

/-! ## A184484.P16381086886786631765

`∑[A001222(Δ[A081842(n+1)])]`
-/

namespace A184484.P16381086886786631765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081842 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184484.P16381086886786631765

/-! ## A184484.P8953160785425256396

`∑[A324350(Δ[A081842(n+1)])]`
-/

namespace A184484.P8953160785425256396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081842 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324350 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184484.P8953160785425256396

/-! ## A184484.P12499157974718305685

`filter[n+1, A284368(#)]`
-/

namespace A184484.P12499157974718305685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284368 (f1 j) = 1) n)

end

end A184484.P12499157974718305685

/-! ## A184484.P1472248158435494431

`eq[1, A284368(n+1)]+1`
-/

namespace A184484.P1472248158435494431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184484.P1472248158435494431

/-! ## A184484.P859109745049363674

`record[A000027(n+1)*A284368(n+1)]`
-/

namespace A184484.P859109745049363674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A284368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184484.P859109745049363674

/-! ## A184484.P7949852417602430668

`record[A133310(n)*A284368(A133310(n))]`
-/

namespace A184484.P7949852417602430668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n * A284368 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184484.P7949852417602430668

/-! ## A184484.P10797400140811556852

`record[A008619(n)*A284368(A008619(n))]`
-/

namespace A184484.P10797400140811556852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A284368 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184484.P10797400140811556852

/-! ## A184484.P266420437025235605

`record[A065033(n)*A284368(A065033(n))]`
-/

namespace A184484.P266420437025235605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A284368 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184484.P266420437025235605

/-! ## A184484.P11313824805182742799

`ceil(A284676(A016789(n))/3)`
-/

namespace A184484.P11313824805182742799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284676 (A016789 n).toNat : ℚ) / 3⌉

end

end A184484.P11313824805182742799

/-! ## A184484.P4917948846629783654

`record[A008620(n)*A284368(A008620(n))]`
-/

namespace A184484.P4917948846629783654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A284368 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184484.P4917948846629783654

/-!
# A184485: Upper s-Wythoff sequence, where s(n)=3n-2. Complement of A184484.

The programs for A184485, there is no canonical definition to state claims against.
-/

/-! ## A184485.P16679681071025187074

`3*n+A184484(n+1)+1`
-/

namespace A184485.P16679681071025187074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A184484 (n + 1) + 1)

end

end A184485.P16679681071025187074

/-! ## A184485.P8743704962862377625

`A184484(n+1)+A016777(n)`
-/

namespace A184485.P8743704962862377625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 1) + A016777 n

end

end A184485.P8743704962862377625

/-! ## A184485.P9699667054681990505

`A184484(n+1)+sqrt(A016778(n))`
-/

namespace A184485.P9699667054681990505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184484 (n + 1) : ℝ) + Real.sqrt (A016778 n : ℝ)

end

end A184485.P9699667054681990505

/-! ## A184485.P5650237135823133126

`A184484(n+1)+Δ[A000326(n)]`
-/

namespace A184485.P5650237135823133126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 1) + (f1 (n + 1) - f1 n)

end

end A184485.P5650237135823133126

/-! ## A184485.P8650964745477290193

`A184484(n+1)+Δ[A143689(n)]`
-/

namespace A184485.P8650964745477290193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 1) + (f1 (n + 1) - f1 n)

end

end A184485.P8650964745477290193

/-! ## A184485.P10723385629161373721

`A184484(n+1)+A008585(n)+1`
-/

namespace A184485.P10723385629161373721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 1) + (A008585 n + 1)

end

end A184485.P10723385629161373721

/-! ## A184485.P5290431956370674237

`A081842(n+2)+n-1`
-/

namespace A184485.P5290431956370674237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081842 (n + 2) + ((n : ℤ) - 1)

end

end A184485.P5290431956370674237

/-! ## A184485.P2826003035586055845

`A184483(n+1)-A284386(A184484(n+1))`
-/

namespace A184485.P2826003035586055845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184483 (n + 1) - A284386 (A184484 (n + 1)).toNat

end

end A184485.P2826003035586055845

/-! ## A184485.P12504876337868828849

`ceil(A284675(A016789(n))/3)`
-/

namespace A184485.P12504876337868828849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284675 (A016789 n).toNat : ℚ) / 3⌉

end

end A184485.P12504876337868828849

/-! ## A184485.P7726719247015296473

`A284678(n+1)+A284677(3*n+2)`
-/

namespace A184485.P7726719247015296473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) + A284677 (3 * n + 2)

end

end A184485.P7726719247015296473

/-! ## A184485.P15179701684268699772

`A184480(A184484(n+1)+Δ[n²])`
-/

namespace A184485.P15179701684268699772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A184484 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A184485.P15179701684268699772

/-! ## A184485.P649377053102402341

`A184484(A184484(n+1)+A005843(n))+1`
-/

namespace A184485.P649377053102402341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (A184484 (n + 1) + A005843 n).toNat + 1

end

end A184485.P649377053102402341

/-! ## A184485.P2117430269564519078

`eq[0, A284368(n+2)]+2`
-/

namespace A184485.P2117430269564519078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284368 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A184485.P2117430269564519078

/-!
# A184486: Lower s-Wythoff sequence, where s(n)=4n+1. Complement of A184487.

The programs for A184486, the canonical program `A184486.P235648414909405234` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184486 has offset 1).

The definition of A184486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184486.P8641423337044471177

`comp[A184519(n+1)-2]`
-/

namespace A184486.P8641423337044471177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184519 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184486.P8641423337044471177

namespace A184486

/-- `comp[A184519(n+1)-2]` -/
def P8641423337044471177.Spec : Prop :=
  ∀ n, (P8641423337044471177.a n : ℤ) = A184486 (n + 1)

end A184486

/-! ## A184486.P235648414909405234

`comp[A007064(2*n+1)-1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A184486

/-- `comp[A007064(2*n+1)-1]` -/
def P235648414909405234.Spec : Prop :=
  ∀ n, (P235648414909405234.a n : ℤ) = A184486 (n + 1)

theorem P235648414909405234.correct : P235648414909405234.Spec := by
  intro n
  simp only [A184486, Nat.add_sub_cancel]

end A184486

/-! ## A184486.P6484686672860004106

`A184487(n+1)-A004766(n+1)`
-/

namespace A184486.P6484686672860004106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184487 (n + 1) - A004766 (n + 1)

end

end A184486.P6484686672860004106

namespace A184486

/-- `A184487(n+1)-A004766(n+1)` -/
def P6484686672860004106.Spec : Prop :=
  ∀ n, P6484686672860004106.a n = A184486 (n + 1)

end A184486

/-! ## A184486.P18235461005695832435

`A184518(n+2)-2`
-/

namespace A184486.P18235461005695832435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184518 (n + 2) - 2

end

end A184486.P18235461005695832435

namespace A184486

/-- `A184518(n+2)-2` -/
def P18235461005695832435.Spec : Prop :=
  ∀ n, P18235461005695832435.a n = A184486 (n + 1)

end A184486

/-! ## A184486.P2919602697853054223

`A184519(n+2)-(4*n+7)`
-/

namespace A184486.P2919602697853054223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184519 (n + 2) - (4 * n + 7 : ℤ)

end

end A184486.P2919602697853054223

namespace A184486

/-- `A184519(n+2)-(4*n+7)` -/
def P2919602697853054223.Spec : Prop :=
  ∀ n, P2919602697853054223.a n = A184486 (n + 1)

end A184486

/-! ## A184486.P4507126915292056139

`A023444(A184518(n+2))`
-/

namespace A184486.P4507126915292056139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A184518 (n + 2)).toNat

end

end A184486.P4507126915292056139

namespace A184486

/-- `A023444(A184518(n+2))` -/
def P4507126915292056139.Spec : Prop :=
  ∀ n, P4507126915292056139.a n = A184486 (n + 1)

end A184486

/-! ## A184486.P16777885160010052120

`A007064(2*n+3)%(2*n+3)`
-/

namespace A184486.P16777885160010052120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007064 (2 * n + 3)) (2 * n + 3 : ℤ)

end

end A184486.P16777885160010052120

namespace A184486

/-- `A007064(2*n+3)%(2*n+3)` -/
def P16777885160010052120.Spec : Prop :=
  ∀ n, P16777885160010052120.a n = A184486 (n + 1)

end A184486

/-! ## A184486.P2449195513121436927

`A007064(A144396(n+1))-(4*n+6)`
-/

namespace A184486.P2449195513121436927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A144396 (n + 1)).toNat - (4 * n + 6 : ℤ)

end

end A184486.P2449195513121436927

namespace A184486

/-- `A007064(A144396(n+1))-(4*n+6)` -/
def P2449195513121436927.Spec : Prop :=
  ∀ n, P2449195513121436927.a n = A184486 (n + 1)

end A184486

/-! ## A184486.P17941808731129424444

`A110654(A005206(4*(n+1)))-1`
-/

namespace A184486.P17941808731129424444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005206 (4 * (n + 1))).toNat - 1

end

end A184486.P17941808731129424444

namespace A184486

/-- `A110654(A005206(4*(n+1)))-1` -/
def P17941808731129424444.Spec : Prop :=
  ∀ n, P17941808731129424444.a n = A184486 (n + 1)

end A184486

/-! ## A184486.P17589928708203852427

`record[A057979(n)-A212831(A005206(n))]`
-/

namespace A184486.P17589928708203852427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - A212831 (A005206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184486.P17589928708203852427

namespace A184486

/-- `record[A057979(n)-A212831(A005206(n))]` -/
def P17589928708203852427.Spec : Prop :=
  ∀ n, P17589928708203852427.a n = A184486 (n + 1)

end A184486

/-!
# A184487: Upper s-Wythoff sequence, where s(n)=4n+1. Complement of A184486.

The programs for A184487, the canonical program `A184487.P9769132787964689709` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184487 has offset 1).

The definition of A184487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184487.P9769132787964689709

`A184486(n+1)+4*n+5`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A184487

/-- `A184486(n+1)+4*n+5` -/
def P9769132787964689709.Spec : Prop :=
  ∀ n, P9769132787964689709.a n = A184487 (n + 1)

theorem P9769132787964689709.correct : P9769132787964689709.Spec := by
  intro n
  simp only [A184487, Nat.add_sub_cancel]

end A184487

/-! ## A184487.P2372331127222463031

`A184519(n+2)-2`
-/

namespace A184487.P2372331127222463031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184519 (n + 2) - 2

end

end A184487.P2372331127222463031

namespace A184487

/-- `A184519(n+2)-2` -/
def P2372331127222463031.Spec : Prop :=
  ∀ n, P2372331127222463031.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P1443965472914302432

`∑[abs(Δ[A184519(n+1)])]`
-/

namespace A184487.P1443965472914302432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184519 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184487.P1443965472914302432

namespace A184487

/-- `∑[abs(Δ[A184519(n+1)])]` -/
def P1443965472914302432.Spec : Prop :=
  ∀ n, P1443965472914302432.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P4204230855729746330

`∑[A113935(Δ[A184518(n+1)])]`
-/

namespace A184487.P4204230855729746330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184518 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184487.P4204230855729746330

namespace A184487

/-- `∑[A113935(Δ[A184518(n+1)])]` -/
def P4204230855729746330.Spec : Prop :=
  ∀ n, P4204230855729746330.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P1121268155762197565

`A016813(n+1)+A184518(n+2)-2`
-/

namespace A184487.P1121268155762197565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1) + (A184518 (n + 2) - 2)

end

end A184487.P1121268155762197565

namespace A184487

/-- `A016813(n+1)+A184518(n+2)-2` -/
def P1121268155762197565.Spec : Prop :=
  ∀ n, P1121268155762197565.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P5809040154137563577

`A184657(2*(n+1))`
-/

namespace A184487.P5809040154137563577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 (2 * (n + 1))

end

end A184487.P5809040154137563577

namespace A184487

/-- `A184657(2*(n+1))` -/
def P5809040154137563577.Spec : Prop :=
  ∀ n, P5809040154137563577.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P7995731097219490972

`A007064(2*n+3)-1`
-/

namespace A184487.P7995731097219490972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * n + 3) - 1

end

end A184487.P7995731097219490972

namespace A184487

/-- `A007064(2*n+3)-1` -/
def P7995731097219490972.Spec : Prop :=
  ∀ n, P7995731097219490972.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P16014298277599901717

`∑[abs(Δ[A007064(2*n+1)])]`
-/

namespace A184487.P16014298277599901717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184487.P16014298277599901717

namespace A184487

/-- `∑[abs(Δ[A007064(2*n+1)])]` -/
def P16014298277599901717.Spec : Prop :=
  ∀ n, P16014298277599901717.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P3068554035095817337

`∑[A000027(Δ[A007064(2*n+1)])]`
-/

namespace A184487.P3068554035095817337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184487.P3068554035095817337

namespace A184487

/-- `∑[A000027(Δ[A007064(2*n+1)])]` -/
def P3068554035095817337.Spec : Prop :=
  ∀ n, P3068554035095817337.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P16709519521737955056

`∑[A024653(Δ[A007064(2*n+1)])]`
-/

namespace A184487.P16709519521737955056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024653 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184487.P16709519521737955056

namespace A184487

/-- `∑[A024653(Δ[A007064(2*n+1)])]` -/
def P16709519521737955056.Spec : Prop :=
  ∀ n, P16709519521737955056.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P9648475424442560822

`A023444(A184519(n+2))`
-/

namespace A184487.P9648475424442560822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A184519 (n + 2)).toNat

end

end A184487.P9648475424442560822

namespace A184487

/-- `A023444(A184519(n+2))` -/
def P9648475424442560822.Spec : Prop :=
  ∀ n, P9648475424442560822.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P1732319529512496628

`floor(A026274(A004768(n))/4)`
-/

namespace A184487.P1732319529512496628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026274 (A004768 n).toNat : ℚ) / 4⌋

end

end A184487.P1732319529512496628

namespace A184487

/-- `floor(A026274(A004768(n))/4)` -/
def P1732319529512496628.Spec : Prop :=
  ∀ n, P1732319529512496628.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P11279926488438050045

`A110654(A026274(Δ[A046092(n)]))`
-/

namespace A184487.P11279926488438050045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A026274 (f1 (n + 1) - f1 n).toNat).toNat

end

end A184487.P11279926488438050045

namespace A184487

/-- `A110654(A026274(Δ[A046092(n)]))` -/
def P11279926488438050045.Spec : Prop :=
  ∀ n, P11279926488438050045.a n = A184487 (n + 1)

end A184487

/-! ## A184487.P14276188850237594449

`A022290(A033015(2*(n+1)))`
-/

namespace A184487.P14276188850237594449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A033015 (2 * (n + 1))).toNat

end

end A184487.P14276188850237594449

namespace A184487

/-- `A022290(A033015(2*(n+1)))` -/
def P14276188850237594449.Spec : Prop :=
  ∀ n, P14276188850237594449.a n = A184487 (n + 1)

end A184487

/-!
# A184488: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock sum greater than 4.

The programs for A184488, there is no canonical definition to state claims against.
-/

/-! ## A184488.P7000122147691729238

`A184497((n+1)²+n²)`
-/

namespace A184488.P7000122147691729238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 ((n + 1) ^ 2 + n ^ 2)

end

end A184488.P7000122147691729238

/-!
# A184489: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock sum greater than 4.

The programs for A184489, there is no canonical definition to state claims against.
-/

/-! ## A184489.P559684077450515811

`A184497(∑[n]+1)`
-/

namespace A184489.P559684077450515811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184489.P559684077450515811

/-! ## A184489.P682855449623379623

`record[A176226(n)*A184497(n+1)]`
-/

namespace A184489.P682855449623379623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176226 n * A184497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184489.P682855449623379623

/-! ## A184489.P2127675390448764478

`record[root(A184497(n+1), A008279(n))]`
-/

namespace A184489.P2127675390448764478
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184497 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184489.P2127675390448764478

/-! ## A184489.P1055013872092162286

`record[gcd(A002262(n), A184497(n+1))]`
-/

namespace A184489.P1055013872092162286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184497 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184489.P1055013872092162286

/-! ## A184489.P5737329516195609273

`record[A184497(n+1)/A166962(n+1)]`
-/

namespace A184489.P5737329516195609273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184497 (n + 1) : ℚ) / (A166962 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184489.P5737329516195609273

/-!
# A184490: Number of (n+1)X3 0..2 arrays with every 2X2 subblock sum greater than 4.

The programs for A184490, there is no canonical definition to state claims against.
-/

/-! ## A184490.P10829669197210512669

`A184497(∑[n+1]+2)`
-/

namespace A184490.P10829669197210512669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184490.P10829669197210512669

/-! ## A184490.P5149914095313373918

`record[gcd(A002262(n), A184497(n+2))]`
-/

namespace A184490.P5149914095313373918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184497 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184490.P5149914095313373918

/-! ## A184490.P3781842314737225448

`A184497(A000096(n)+3)+A025469(n)`
-/

namespace A184490.P3781842314737225448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A000096 n + 3).toNat + A025469 n

end

end A184490.P3781842314737225448

/-! ## A184490.P7497364473249996076

`or(A000007(n), A184497(A000096(n)+3))`
-/

namespace A184490.P7497364473249996076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A184497 (A000096 n + 3).toNat)

end

end A184490.P7497364473249996076

/-! ## A184490.P6642688291547904570

`record[A184497(Δ[A003453(n+5)])]`
-/

namespace A184490.P6642688291547904570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184490.P6642688291547904570

/-!
# A184491: Number of (n+1)X4 0..2 arrays with every 2X2 subblock sum greater than 4.

The programs for A184491, there is no canonical definition to state claims against.
-/

/-! ## A184491.P1034218778059001523

`A184497(∑[n+2]+4)`
-/

namespace A184491.P1034218778059001523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184491.P1034218778059001523

/-! ## A184491.P11179023937147196191

`lcm((-1)^n, A184497(A167614(n+1)))`
-/

namespace A184491.P11179023937147196191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A184497 (A167614 (n + 1)).toNat)

end

end A184491.P11179023937147196191

/-! ## A184491.P290199758692766443

`A184497(A167614(n+1))+A034561(n+1)`
-/

namespace A184491.P290199758692766443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A167614 (n + 1)).toNat + A034561 (n + 1)

end

end A184491.P290199758692766443

/-! ## A184491.P13623854561737656230

`A184497(A167614(n+1))*A266591(2*n)`
-/

namespace A184491.P13623854561737656230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A167614 (n + 1)).toNat * A266591 (2 * n)

end

end A184491.P13623854561737656230

/-! ## A184491.P7051627716074180661

`A184497(A167614(n+1))%A184492(n+1)`
-/

namespace A184491.P7051627716074180661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184497 (A167614 (n + 1)).toNat) (A184492 (n + 1))

end

end A184491.P7051627716074180661

/-!
# A184492: Number of (n+1)X5 0..2 arrays with every 2X2 subblock sum greater than 4.

The programs for A184492, there is no canonical definition to state claims against.
-/

/-! ## A184492.P5666997127161922933

`A184497(A374004(n+1))`
-/

namespace A184492.P5666997127161922933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A374004 (n + 1)).toNat

end

end A184492.P5666997127161922933

/-! ## A184492.P8093643272534188465

`A184497(A141214(n)+7)`
-/

namespace A184492.P8093643272534188465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A141214 n + 7).toNat

end

end A184492.P8093643272534188465

/-! ## A184492.P17722928458856661796

`A184497(A052905(n)+9)`
-/

namespace A184492.P17722928458856661796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A052905 n + 9).toNat

end

end A184492.P17722928458856661796

/-! ## A184492.P9772318899878242287

`A184497(A055999(n)+10)`
-/

namespace A184492.P9772318899878242287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A055999 n + 10).toNat

end

end A184492.P9772318899878242287

/-! ## A184492.P13143948030985701283

`A184497(A167614(n+2)+1)`
-/

namespace A184492.P13143948030985701283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A167614 (n + 2) + 1).toNat

end

end A184492.P13143948030985701283

/-!
# A184493: Number of (n+1)X6 0..2 arrays with every 2X2 subblock sum greater than 4.

The programs for A184493, there is no canonical definition to state claims against.
-/

/-! ## A184493.P4345432099315505368

`A184497(A374005(n+1))`
-/

namespace A184493.P4345432099315505368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A374005 (n + 1)).toNat

end

end A184493.P4345432099315505368

/-! ## A184493.P15498088800381605277

`A184497(A277112(n+12)+A141214(n))`
-/

namespace A184493.P15498088800381605277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A277112 (n + 12) + A141214 n).toNat

end

end A184493.P15498088800381605277

/-! ## A184493.P17714277873504309628

`A184497(A046691(n+3))`
-/

namespace A184493.P17714277873504309628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A046691 (n + 3)).toNat

end

end A184493.P17714277873504309628

/-! ## A184493.P12744333406682140741

`A184497(eq[4, A193592(n)])`
-/

namespace A184493.P12744333406682140741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184493.P12744333406682140741

/-!
# A184494: Number of (n+1)X7 0..2 arrays with every 2X2 subblock sum greater than 4.

The programs for A184494, there is no canonical definition to state claims against.
-/

/-! ## A184494.P3670062227358024225

`A184497(A374007(n+1))`
-/

namespace A184494.P3670062227358024225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A374007 (n + 1)).toNat

end

end A184494.P3670062227358024225

/-! ## A184494.P1586439556603237213

`A184497(A052905(n+3))`
-/

namespace A184494.P1586439556603237213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A052905 (n + 3)).toNat

end

end A184494.P1586439556603237213

/-! ## A184494.P2473797265769274750

`A184497(eq[5, A193592(n)])`
-/

namespace A184494.P2473797265769274750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184494.P2473797265769274750

/-!
# A184495: 

The programs for A184495, there is no canonical definition to state claims against.
-/

/-! ## A184495.P522600754623937096

`A184497(eq[6, A193592(n)])`
-/

namespace A184495.P522600754623937096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184495.P522600754623937096

/-!
# A184496: 

The programs for A184496, there is no canonical definition to state claims against.
-/

/-! ## A184496.P12280399318528869798

`A184497(A000217(n+8)-n)`
-/

namespace A184496.P12280399318528869798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (A000217 (n + 8) - (n : ℤ)).toNat

end

end A184496.P12280399318528869798

/-! ## A184496.P3919213696639211565

`A184497(eq[7, A193592(n)])`
-/

namespace A184496.P3919213696639211565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184496.P3919213696639211565

/-!
# A184498: 1/12 the number of (n+2)X(n+2) 0..2 arrays with each 3X3 subblock containing one of one value, three of another, and five of the last.

The programs for A184498, there is no canonical definition to state claims against.
-/

/-! ## A184498.P16180477980383571507

`A184505(∑[4*n]+1)`
-/

namespace A184498.P16180477980383571507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184498.P16180477980383571507

/-!
# A184499: 1/12 the number of (n+2)X3 0..2 arrays with each 3X3 subblock containing one of one value, three of another, and five of the last.

The programs for A184499, there is no canonical definition to state claims against.
-/

/-! ## A184499.P12833891418256131895

`A184505(∑[n]+1)`
-/

namespace A184499.P12833891418256131895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184499.P12833891418256131895

/-! ## A184499.P10165469835321656008

`record[A184505(n+1)]`
-/

namespace A184499.P10165469835321656008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184499.P10165469835321656008

/-! ## A184499.P13846885701955681486

`lcm(2, A184505(A000124(n)))`
-/

namespace A184499.P13846885701955681486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184505 (A000124 n).toNat)

end

end A184499.P13846885701955681486

/-! ## A184499.P6561732033224456746

`lcm(6, record[A184505(A106466(n))])`
-/

namespace A184499.P6561732033224456746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A106466 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A184499.P6561732033224456746

/-! ## A184499.P1688496286605146057

`A007318(C(2, n))*A184505(A000124(n))`
-/

namespace A184499.P1688496286605146057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184505 (A000124 n).toNat

end

end A184499.P1688496286605146057

