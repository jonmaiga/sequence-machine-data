import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024

/-!
# A044500: Numbers n such that string 2,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044500, there is no canonical definition to state claims against.
-/

/-! ## A044500.P6921583017695738901

`filter[A043907(n+1), A179775(#)]`
-/

namespace A044500.P6921583017695738901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A044500.P6921583017695738901

/-! ## A044500.P11318526732640515094

`∩[A043907(n+1), A283550(n+1)]`
-/

namespace A044500.P11318526732640515094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044500.P11318526732640515094

/-! ## A044500.P3851311775401855321

`∩[A043907(n+1), A364728(n+1)]`
-/

namespace A044500.P3851311775401855321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044500.P3851311775401855321

/-! ## A044500.P17846913554913003844

`A044120(n+1)-1`
-/

namespace A044500.P17846913554913003844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044120 (n + 1) - 1

end

end A044500.P17846913554913003844

/-! ## A044500.P9798401574429561631

`∩[A043907(n+1), A402188(n+1)]`
-/

namespace A044500.P9798401574429561631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044500.P9798401574429561631

/-!
# A044501: Numbers n such that string 3,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044501, there is no canonical definition to state claims against.
-/

/-! ## A044501.P2146648099423016002

`A044121(n+1)-1`
-/

namespace A044501.P2146648099423016002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044121 (n + 1) - 1

end

end A044501.P2146648099423016002

/-! ## A044501.P2378992114145786298

`A233583(or(A044121(n+1), A151722(n)))`
-/

namespace A044501.P2378992114145786298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor (A044121 (n + 1)) (A151722 n)).toNat

end

end A044501.P2378992114145786298

/-! ## A044501.P8110244254930924384

`A395541(A044121(n+1))`
-/

namespace A044501.P8110244254930924384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395541 (A044121 (n + 1)).toNat

end

end A044501.P8110244254930924384

/-!
# A044502: Numbers n such that string 3,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044502, there is no canonical definition to state claims against.
-/

/-! ## A044502.P15504552807247418998

`A044122(n+1)-1`
-/

namespace A044502.P15504552807247418998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044122 (n + 1) - 1

end

end A044502.P15504552807247418998

/-!
# A044503: Numbers n such that string 3,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044503, there is no canonical definition to state claims against.
-/

/-! ## A044503.P18296601021275103287

`2*A044502(n+1)-(A044121(n+1)-1)`
-/

namespace A044503.P18296601021275103287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044502 (n + 1) - (A044121 (n + 1) - 1)

end

end A044503.P18296601021275103287

/-! ## A044503.P7318720184983462257

`A044502(n+1)+1+A044501(n+1)-A044120(n+1)`
-/

namespace A044503.P7318720184983462257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + (1 + A044501 (n + 1)) - A044120 (n + 1)

end

end A044503.P7318720184983462257

/-! ## A044503.P11650442904768677442

`A044502(n+1)+A044122(n+1)-(1+A044501(n+1))`
-/

namespace A044503.P11650442904768677442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044502 (n + 1) + A044122 (n + 1) - (1 + A044501 (n + 1))

end

end A044503.P11650442904768677442

/-!
# A044504: Numbers n such that string 3,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044504, there is no canonical definition to state claims against.
-/

/-! ## A044504.P10256843697387402529

`A345339(2*n)+A039702(A279785(2*n+3))`
-/

namespace A044504.P10256843697387402529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345339 (2 * n) + A039702 (A279785 (2 * n + 3)).toNat

end

end A044504.P10256843697387402529

/-! ## A044504.P18270112208688119838

`A017617(3*n+1)+A003557(A003261(n+1))`
-/

namespace A044504.P18270112208688119838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 (3 * n + 1) + A003557 (A003261 (n + 1)).toNat

end

end A044504.P18270112208688119838

/-! ## A044504.P7051700802124822904

`or(A017629(3*n+1), A156603(A051286(n)))`
-/

namespace A044504.P7051700802124822904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017629 (3 * n + 1)) (A156603 (A051286 n).toNat)

end

end A044504.P7051700802124822904

/-! ## A044504.P3216370645373807248

`A368472(A130442(n+1))+A017617(3*n+1)`
-/

namespace A044504.P3216370645373807248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (A130442 (n + 1)).toNat + A017617 (3 * n + 1)

end

end A044504.P3216370645373807248

/-!
# A044505: Numbers n such that string 3,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044505, there is no canonical definition to state claims against.
-/

/-! ## A044505.P2547359804060612489

`A044125(n+1)-1`
-/

namespace A044505.P2547359804060612489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (n + 1) - 1

end

end A044505.P2547359804060612489

/-! ## A044505.P13433814350770033382

`record[A044125(A046693(n))-1]`
-/

namespace A044505.P13433814350770033382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044125 (A046693 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044505.P13433814350770033382

/-! ## A044505.P8519547517801417849

`A395541(A044125(n+1))`
-/

namespace A044505.P8519547517801417849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395541 (A044125 (n + 1)).toNat

end

end A044505.P8519547517801417849

/-!
# A044506: Numbers n such that string 3,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044506, there is no canonical definition to state claims against.
-/

/-! ## A044506.P9024524509114065214

`∩[A043909(n+1), A243750(n+1)]`
-/

namespace A044506.P9024524509114065214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044506.P9024524509114065214

/-! ## A044506.P1676202709506028895

`A044126(n+1)-1`
-/

namespace A044506.P1676202709506028895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044126 (n + 1) - 1

end

end A044506.P1676202709506028895

/-! ## A044506.P13189725827074479335

`∩[A043909(n+1), A329857(n+1)]`
-/

namespace A044506.P13189725827074479335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044506.P13189725827074479335

/-! ## A044506.P14102222550579591827

`∩[A027669(n+1), A043909(n+1)]`
-/

namespace A044506.P14102222550579591827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044506.P14102222550579591827

/-!
# A044507: Numbers n such that string 4,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044507, there is no canonical definition to state claims against.
-/

/-! ## A044507.P13200553421898177037

`A044127(n+1)-1`
-/

namespace A044507.P13200553421898177037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044127 (n + 1) - 1

end

end A044507.P13200553421898177037

/-! ## A044507.P11765929873703709424

`∩[A043899(n+1), A140489(n+1)]`
-/

namespace A044507.P11765929873703709424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044507.P11765929873703709424

/-!
# A044508: Numbers n such that string 4,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044508, there is no canonical definition to state claims against.
-/

/-! ## A044508.P6167351283810415351

`A044128(n+1)-1`
-/

namespace A044508.P6167351283810415351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044128 (n + 1) - 1

end

end A044508.P6167351283810415351

/-!
# A044509: Numbers n such that string 4,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044509, there is no canonical definition to state claims against.
-/

/-! ## A044509.P1502862751897794340

`A044129(n+1)-1`
-/

namespace A044509.P1502862751897794340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044129 (n + 1) - 1

end

end A044509.P1502862751897794340

/-! ## A044509.P6562414140319632266

`eq[A092103(n+2), A358217(n+1)]`
-/

namespace A044509.P6562414140319632266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092103 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044509.P6562414140319632266

/-! ## A044509.P3042457007706015231

`eq[A092193(n+2), A358217(n+1)]`
-/

namespace A044509.P3042457007706015231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092193 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044509.P3042457007706015231

/-!
# A044510: Numbers n such that string 4,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044510, there is no canonical definition to state claims against.
-/

/-! ## A044510.P4197986052466876178

`2*A044509(n+1)-(A044128(n+1)-1)`
-/

namespace A044510.P4197986052466876178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044509 (n + 1) - (A044128 (n + 1) - 1)

end

end A044510.P4197986052466876178

/-! ## A044510.P7484869847297633884

`2*A044508(n+1)-(A044126(n+1)-1)`
-/

namespace A044510.P7484869847297633884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044508 (n + 1) - (A044126 (n + 1) - 1)

end

end A044510.P7484869847297633884

/-! ## A044510.P17121863774296012726

`or(p?[A110409(n)], A044129(n+1))`
-/

namespace A044510.P17121863774296012726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A044129 (n + 1))

end

end A044510.P17121863774296012726

/-! ## A044510.P10967575694210619467

`or(p?[A137867(n+1)], A044129(n+1))`
-/

namespace A044510.P10967575694210619467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A044129 (n + 1))

end

end A044510.P10967575694210619467

/-! ## A044510.P3416194026998449770

`or(A020639(A066570(n+1)), A044129(n+1))`
-/

namespace A044510.P3416194026998449770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A066570 (n + 1)).toNat) (A044129 (n + 1))

end

end A044510.P3416194026998449770

/-!
# A044511: Numbers n such that string 4,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044511, there is no canonical definition to state claims against.
-/

/-! ## A044511.P12934673177034706909

`A044131(n+1)-A188011(A119685(n+1))`
-/

namespace A044511.P12934673177034706909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044131 (n + 1) - A188011 (A119685 (n + 1)).toNat

end

end A044511.P12934673177034706909

/-! ## A044511.P15382543504171629841

`A209876(n+1)-A105697(A240234(n+1))`
-/

namespace A044511.P15382543504171629841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209876 (n + 1) - A105697 (A240234 (n + 1)).toNat

end

end A044511.P15382543504171629841

/-! ## A044511.P6061749208074585091

`A133872(A033844(n))+A017569(3*n+2)`
-/

namespace A044511.P6061749208074585091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A033844 n).toNat + A017569 (3 * n + 2)

end

end A044511.P6061749208074585091

/-! ## A044511.P14853848162962336669

`A017581(3*n+2)-A005614(A037231(n+1))`
-/

namespace A044511.P14853848162962336669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (3 * n + 2) - A005614 (A037231 (n + 1)).toNat

end

end A044511.P14853848162962336669

/-! ## A044511.P17854021432895261108

`A044131(n+1)-A213472(A213432(n))`
-/

namespace A044511.P17854021432895261108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044131 (n + 1) - A213472 (A213432 n).toNat

end

end A044511.P17854021432895261108

/-!
# A044512: Numbers n such that string 4,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044512, there is no canonical definition to state claims against.
-/

/-! ## A044512.P9200186043341826550

`∩[A043910(n+1), A124134(n+1)]`
-/

namespace A044512.P9200186043341826550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P9200186043341826550

/-! ## A044512.P14843077400525076347

`∩[A043910(n+1), A166257(n+1)]`
-/

namespace A044512.P14843077400525076347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P14843077400525076347

/-! ## A044512.P14952962958695846629

`∩[A043910(n+1), A173263(n+1)]`
-/

namespace A044512.P14952962958695846629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P14952962958695846629

/-! ## A044512.P6923377480149805309

`∩[A043910(n+1), A115405(n+1)]`
-/

namespace A044512.P6923377480149805309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P6923377480149805309

/-! ## A044512.P13267909716154800685

`∩[A043910(n+1), A204878(n+1)]`
-/

namespace A044512.P13267909716154800685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044512.P13267909716154800685

/-!
# A044513: Numbers n such that string 5,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044513, there is no canonical definition to state claims against.
-/

/-! ## A044513.P10129472959979926723

`A044133(n+1)-1`
-/

namespace A044513.P10129472959979926723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044133 (n + 1) - 1

end

end A044513.P10129472959979926723

/-! ## A044513.P11234194306387587513

`A233583(A044133(n+1))`
-/

namespace A044513.P11234194306387587513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044133 (n + 1)).toNat

end

end A044513.P11234194306387587513

/-! ## A044513.P17166050520665818895

`∩[A043900(n+1), A197127(n+1)]`
-/

namespace A044513.P17166050520665818895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044513.P17166050520665818895

/-!
# A044514: Numbers n such that string 5,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044514, there is no canonical definition to state claims against.
-/

/-! ## A044514.P7919507837716398005

`A044134(n+1)-1`
-/

namespace A044514.P7919507837716398005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044134 (n + 1) - 1

end

end A044514.P7919507837716398005

/-! ## A044514.P11412438793889919993

`A124741(A044134(n+1))`
-/

namespace A044514.P11412438793889919993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044134 (n + 1)).toNat

end

end A044514.P11412438793889919993

/-!
# A044515: Numbers n such that string 5,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044515, there is no canonical definition to state claims against.
-/

/-! ## A044515.P18424239169024745527

`-1+A044135(n+1)`
-/

namespace A044515.P18424239169024745527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044135 (n + 1)

end

end A044515.P18424239169024745527

/-! ## A044515.P5704443092228408110

`A044135(n+1)-1`
-/

namespace A044515.P5704443092228408110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044135 (n + 1) - 1

end

end A044515.P5704443092228408110

/-! ## A044515.P5310850320244219525

`A233583(A044135(n+1))`
-/

namespace A044515.P5310850320244219525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044135 (n + 1)).toNat

end

end A044515.P5310850320244219525

/-!
# A044516: Numbers n such that string 5,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044516, there is no canonical definition to state claims against.
-/

/-! ## A044516.P5448726122700996670

`A044136(n+1)-1`
-/

namespace A044516.P5448726122700996670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044136 (n + 1) - 1

end

end A044516.P5448726122700996670

/-! ## A044516.P6697907573989566861

`A124741(A044136(n+1))`
-/

namespace A044516.P6697907573989566861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044136 (n + 1)).toNat

end

end A044516.P6697907573989566861

/-!
# A044517: Numbers n such that string 5,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044517, there is no canonical definition to state claims against.
-/

/-! ## A044517.P10373741317741955773

`A044516(n+1)+A044515(n+1)-(A044134(n+1)%A093472(n)-1)`
-/

namespace A044517.P10373741317741955773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044516 (n + 1) + A044515 (n + 1) - (Int.tmod (A044134 (n + 1)) (A093472 n) - 1)

end

end A044517.P10373741317741955773

/-! ## A044517.P3704977959034431934

`A044515(n+1)+A044515(n+1)-(A044133(n+1)-1)`
-/

namespace A044517.P3704977959034431934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044515 (n + 1) + A044515 (n + 1) - (A044133 (n + 1) - 1)

end

end A044517.P3704977959034431934

/-! ## A044517.P8536885724290830620

`A044516(n+1)+A044514(n+1)-(A044133(n+1)-1)`
-/

namespace A044517.P8536885724290830620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044516 (n + 1) + A044514 (n + 1) - (A044133 (n + 1) - 1)

end

end A044517.P8536885724290830620

/-!
# A044519: Numbers n such that string 0,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044519, there is no canonical definition to state claims against.
-/

/-! ## A044519.P12840765353615140451

`A268354(A157362(n+1))+A044567(n+1)`
-/

namespace A044519.P12840765353615140451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157362 (n + 1)).toNat + A044567 (n + 1)

end

end A044519.P12840765353615140451

/-! ## A044519.P8706313853819263972

`A268354(A157923(n+1))+A044567(n+1)`
-/

namespace A044519.P8706313853819263972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157923 (n + 1)).toNat + A044567 (n + 1)

end

end A044519.P8706313853819263972

/-! ## A044519.P6349418765616814484

`A268354(A157362(n+1))+A017053(A017053(n))`
-/

namespace A044519.P6349418765616814484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157362 (n + 1)).toNat + A017053 (A017053 n).toNat

end

end A044519.P6349418765616814484

/-! ## A044519.P456194459343450554

`A268354(A157923(n+1))+A017053(A017053(n))`
-/

namespace A044519.P456194459343450554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A157923 (n + 1)).toNat + A017053 (A017053 n).toNat

end

end A044519.P456194459343450554

/-!
# A044520: Numbers n such that string 0,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044520, there is no canonical definition to state claims against.
-/

/-! ## A044520.P17542467604788728842

`A044140(1+n)-1`
-/

namespace A044520.P17542467604788728842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044140 (1 + n) - 1

end

end A044520.P17542467604788728842

/-! ## A044520.P12950746284241704533

`A233583(A044140(n+1))`
-/

namespace A044520.P12950746284241704533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044140 (n + 1)).toNat

end

end A044520.P12950746284241704533

/-!
# A044521: Numbers n such that string 0,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044521, there is no canonical definition to state claims against.
-/

/-! ## A044521.P6991344769581020768

`A044141(n+1)-1`
-/

namespace A044521.P6991344769581020768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044141 (n + 1) - 1

end

end A044521.P6991344769581020768

/-! ## A044521.P15725932260380229499

`A233583(A044141(n+1))`
-/

namespace A044521.P15725932260380229499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044141 (n + 1)).toNat

end

end A044521.P15725932260380229499

/-!
# A044522: Numbers n such that string 0,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044522, there is no canonical definition to state claims against.
-/

/-! ## A044522.P2557768025619404763

`A044142(1+n)-1`
-/

namespace A044522.P2557768025619404763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044142 (1 + n) - 1

end

end A044522.P2557768025619404763

/-! ## A044522.P14629456530921541063

`-1+A044142(n+1)`
-/

namespace A044522.P14629456530921541063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044142 (n + 1)

end

end A044522.P14629456530921541063

/-! ## A044522.P17472915300353139599

`A233583(A044142(n+1))`
-/

namespace A044522.P17472915300353139599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044142 (n + 1)).toNat

end

end A044522.P17472915300353139599

/-!
# A044523: Numbers n such that string 0,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044523, there is no canonical definition to state claims against.
-/

/-! ## A044523.P7101294252300615607

`A044143(1+n)-1`
-/

namespace A044523.P7101294252300615607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (1 + n) - 1

end

end A044523.P7101294252300615607

/-! ## A044523.P13280303843861859841

`-1+A044143(n+1)`
-/

namespace A044523.P13280303843861859841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044143 (n + 1)

end

end A044523.P13280303843861859841

/-! ## A044523.P3853018452217429171

`A233583(A044143(n+1))`
-/

namespace A044523.P3853018452217429171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044143 (n + 1)).toNat

end

end A044523.P3853018452217429171

/-!
# A044524: Numbers n such that string 0,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044524, there is no canonical definition to state claims against.
-/

/-! ## A044524.P14060458938606876802

`A044144(1+n)-1`
-/

namespace A044524.P14060458938606876802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044144 (1 + n) - 1

end

end A044524.P14060458938606876802

/-! ## A044524.P12092319291171115430

`-1+A044144(n+1)`
-/

namespace A044524.P12092319291171115430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044144 (n + 1)

end

end A044524.P12092319291171115430

/-! ## A044524.P8406157328631484247

`A233583(A044144(n+1))`
-/

namespace A044524.P8406157328631484247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044144 (n + 1)).toNat

end

end A044524.P8406157328631484247

/-!
# A044525: Numbers n such that string 0,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044525, there is no canonical definition to state claims against.
-/

/-! ## A044525.P16644325769358565035

`2*A044523(n+1)-(A044141(n+1)-1)`
-/

namespace A044525.P16644325769358565035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044523 (n + 1) - (A044141 (n + 1) - 1)

end

end A044525.P16644325769358565035

/-! ## A044525.P6808052730590069359

`A045683(A298937(n))+A044524(n+1)`
-/

namespace A044525.P6808052730590069359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 (A298937 n).toNat + A044524 (n + 1)

end

end A044525.P6808052730590069359

/-! ## A044525.P9293887330985493156

`A055061(A280636(n+1))+A044524(n+1)`
-/

namespace A044525.P9293887330985493156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055061 (A280636 (n + 1)).toNat + A044524 (n + 1)

end

end A044525.P9293887330985493156

/-!
# A044528: Numbers n such that string 1,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044528, there is no canonical definition to state claims against.
-/

/-! ## A044528.P6945912190799970833

`A044148(n+1)-A241578(∑[n])`
-/

namespace A044528.P6945912190799970833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A241578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044528.P6945912190799970833

/-! ## A044528.P11829386779633076020

`A044148(n+1)-A165591(3^n)`
-/

namespace A044528.P11829386779633076020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A165591 (3 ^ n)

end

end A044528.P11829386779633076020

/-! ## A044528.P175794551181003064

`A044148(n+1)-A165596(3^n)`
-/

namespace A044528.P175794551181003064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A165596 (3 ^ n)

end

end A044528.P175794551181003064

/-! ## A044528.P10982643840379963132

`A044148(n+1)-A014963(A176641(n))`
-/

namespace A044528.P10982643840379963132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044148 (n + 1) - A014963 (A176641 n).toNat

end

end A044528.P10982643840379963132

/-!
# A044529: Numbers n such that string 1,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044529, there is no canonical definition to state claims against.
-/

/-! ## A044529.P15710322541924117262

`A044149(n+1)-A262553(A037270(n))`
-/

namespace A044529.P15710322541924117262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044149 (n + 1) - A262553 (A037270 n).toNat

end

end A044529.P15710322541924117262

/-! ## A044529.P10276403215962570847

`A044149(n+1)-A342017(A000108(n))`
-/

namespace A044529.P10276403215962570847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044149 (n + 1) - A342017 (A000108 n).toNat

end

end A044529.P10276403215962570847

/-! ## A044529.P14283223925611433581

`A153881(A060230(n+1))+A044149(n+1)`
-/

namespace A044529.P14283223925611433581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A060230 (n + 1)).toNat + A044149 (n + 1)

end

end A044529.P14283223925611433581

/-! ## A044529.P14759666704404259392

`A044149(n+1)-A323014(A179256(n+1))`
-/

namespace A044529.P14759666704404259392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044149 (n + 1) - A323014 (A179256 (n + 1)).toNat

end

end A044529.P14759666704404259392

/-! ## A044529.P1980941526692495303

`A153881(A124818(n+2)+2)+A044149(n+1)`
-/

namespace A044529.P1980941526692495303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A124818 (n + 2) + 2).toNat + A044149 (n + 1)

end

end A044529.P1980941526692495303

/-!
# A044530: Numbers n such that string 1,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044530, there is no canonical definition to state claims against.
-/

/-! ## A044530.P14120652889929673020

`A057428(A080877(n))+A044150(n+1)`
-/

namespace A044530.P14120652889929673020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A080877 n).toNat + A044150 (n + 1)

end

end A044530.P14120652889929673020

/-! ## A044530.P12536554196880922910

`A057428(A280148(n))+A044150(n+1)`
-/

namespace A044530.P12536554196880922910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A280148 n).toNat + A044150 (n + 1)

end

end A044530.P12536554196880922910

/-! ## A044530.P16180140016927958257

`A057428(A290528(n))+A044150(n+1)`
-/

namespace A044530.P16180140016927958257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A290528 n).toNat + A044150 (n + 1)

end

end A044530.P16180140016927958257

/-! ## A044530.P5065153671384098646

`A057428(A398101(n))+A044150(n+1)`
-/

namespace A044530.P5065153671384098646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A398101 n).toNat + A044150 (n + 1)

end

end A044530.P5065153671384098646

/-! ## A044530.P7095896569172612808

`A044150(n+1)-A356167(A042841(n))`
-/

namespace A044530.P7095896569172612808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044150 (n + 1) - A356167 (A042841 n).toNat

end

end A044530.P7095896569172612808

/-!
# A044531: Numbers n such that string 1,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044531, there is no canonical definition to state claims against.
-/

/-! ## A044531.P10407066250941880012

`A044151(A077168(n))-1`
-/

namespace A044531.P10407066250941880012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044151 (A077168 n).toNat - 1

end

end A044531.P10407066250941880012

/-! ## A044531.P16734443472787131971

`A044151(n+1)-A251725(2^n)`
-/

namespace A044531.P16734443472787131971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044151 (n + 1) - A251725 (2 ^ n)

end

end A044531.P16734443472787131971

/-! ## A044531.P12174334457876752877

`A044151(n+1)-A284252(2^n)`
-/

namespace A044531.P12174334457876752877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044151 (n + 1) - A284252 (2 ^ n)

end

end A044531.P12174334457876752877

/-! ## A044531.P960997778810359976

`A057428(A000079(n))+A044151(n+1)`
-/

namespace A044531.P960997778810359976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000079 n).toNat + A044151 (n + 1)

end

end A044531.P960997778810359976

/-! ## A044531.P2629139114805085252

`A076479(A062700(n+1))+A044151(n+1)`
-/

namespace A044531.P2629139114805085252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A062700 (n + 1)).toNat + A044151 (n + 1)

end

end A044531.P2629139114805085252

/-!
# A044532: Numbers n such that string 1,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044532, there is no canonical definition to state claims against.
-/

/-! ## A044532.P4320482842039429258

`A044152(A187829(n+1))-1`
-/

namespace A044532.P4320482842039429258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (A187829 (n + 1)).toNat - 1

end

end A044532.P4320482842039429258

/-! ## A044532.P3274141033922630804

`A044152(n+1)-A001222(A201914(n))`
-/

namespace A044532.P3274141033922630804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A001222 (A201914 n).toNat

end

end A044532.P3274141033922630804

/-! ## A044532.P12479841359201776720

`A044152(n+1)-A040361(A161341(n+1))`
-/

namespace A044532.P12479841359201776720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A040361 (A161341 (n + 1)).toNat

end

end A044532.P12479841359201776720

/-! ## A044532.P2254830015810526754

`A044152(n+1)-A001222(A233523(n+1))`
-/

namespace A044532.P2254830015810526754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A001222 (A233523 (n + 1)).toNat

end

end A044532.P2254830015810526754

/-! ## A044532.P10623550061398789831

`A044152(n+1)-A023532(A260017(n+1))`
-/

namespace A044532.P10623550061398789831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044152 (n + 1) - A023532 (A260017 (n + 1)).toNat

end

end A044532.P10623550061398789831

/-!
# A044533: Numbers n such that string 2,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044533, there is no canonical definition to state claims against.
-/

/-! ## A044533.P2234482138596442514

`A044153(n+1)-A113863(A136712(n))`
-/

namespace A044533.P2234482138596442514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A113863 (A136712 n).toNat

end

end A044533.P2234482138596442514

/-! ## A044533.P6026501811155902741

`A305807(A065107(n+1))+A044153(n+1)`
-/

namespace A044533.P6026501811155902741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A065107 (n + 1)).toNat + A044153 (n + 1)

end

end A044533.P6026501811155902741

/-! ## A044533.P15647141435173195346

`A044153(n+1)-A001055(A211003(n+1))`
-/

namespace A044533.P15647141435173195346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A001055 (A211003 (n + 1)).toNat

end

end A044533.P15647141435173195346

/-! ## A044533.P11020745159519347163

`A044153(n+1)-A001222(A345905(n+1))`
-/

namespace A044533.P11020745159519347163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A001222 (A345905 (n + 1)).toNat

end

end A044533.P11020745159519347163

/-! ## A044533.P15786353671140374499

`A044153(n+1)-A078572(A292090(n+5))`
-/

namespace A044533.P15786353671140374499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) - A078572 (A292090 (n + 5)).toNat

end

end A044533.P15786353671140374499

/-!
# A044534: Numbers n such that string 2,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044534, there is no canonical definition to state claims against.
-/

/-! ## A044534.P6919282525442425555

`A044153(n+1)+(A044153(n+1)-A001222(A065107(n+1)))%7`
-/

namespace A044534.P6919282525442425555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) + Int.tmod (A044153 (n + 1) - A001222 (A065107 (n + 1)).toNat) 7

end

end A044534.P6919282525442425555

/-! ## A044534.P9214790985319085164

`A044153(n+1)+(A044153(n+1)-A001222(A211003(n+1)))%7`
-/

namespace A044534.P9214790985319085164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) + Int.tmod (A044153 (n + 1) - A001222 (A211003 (n + 1)).toNat) 7

end

end A044534.P9214790985319085164

/-! ## A044534.P16610829862309931573

`A044153(n+1)+(A044153(n+1)-A014963(A068293(n+1)))%7`
-/

namespace A044534.P16610829862309931573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044153 (n + 1) + Int.tmod (A044153 (n + 1) - A014963 (A068293 (n + 1)).toNat) 7

end

end A044534.P16610829862309931573

/-! ## A044534.P10692920892524638489

`or(A044153(n+1), A127775(A063894(n+3)))`
-/

namespace A044534.P10692920892524638489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044153 (n + 1)) (A127775 (A063894 (n + 3)).toNat)

end

end A044534.P10692920892524638489

/-! ## A044534.P8112186028642174407

`or(A044153(n+1), A127775(A270890(3*n+2)))`
-/

namespace A044534.P8112186028642174407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044153 (n + 1)) (A127775 (A270890 (3 * n + 2)).toNat)

end

end A044534.P8112186028642174407

/-!
# A044535: Numbers n such that string 2,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044535, there is no canonical definition to state claims against.
-/

/-! ## A044535.P3451382353563935983

`A304205(n+1)+A304182(A304162(n+4))`
-/

namespace A044535.P3451382353563935983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A304182 (A304162 (n + 4)).toNat

end

end A044535.P3451382353563935983

/-! ## A044535.P13264615727034796431

`A043917(2*n+1)+A032741(A216925(n+1))`
-/

namespace A044535.P13264615727034796431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043917 (2 * n + 1) + A032741 (A216925 (n + 1)).toNat

end

end A044535.P13264615727034796431

/-!
# A044536: Numbers n such that string 2,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044536, there is no canonical definition to state claims against.
-/

/-! ## A044536.P3509690846494767487

`A044156(n+1)-1`
-/

namespace A044536.P3509690846494767487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044156 (n + 1) - 1

end

end A044536.P3509690846494767487

/-! ## A044536.P17628393495015914880

`A395541(A044156(n+1))`
-/

namespace A044536.P17628393495015914880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395541 (A044156 (n + 1)).toNat

end

end A044536.P17628393495015914880

/-!
# A044537: Numbers n such that string 2,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044537, there is no canonical definition to state claims against.
-/

/-! ## A044537.P15589574369554458095

`A044157(n+1)-1`
-/

namespace A044537.P15589574369554458095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044157 (n + 1) - 1

end

end A044537.P15589574369554458095

/-!
# A044538: Numbers n such that string 2,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044538, there is no canonical definition to state claims against.
-/

/-! ## A044538.P11100165346126671034

`A044158(n+1)-1`
-/

namespace A044538.P11100165346126671034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044158 (n + 1) - 1

end

end A044538.P11100165346126671034

/-! ## A044538.P8485238995982260561

`∩[A043924(n+1), A257346(n+1)]`
-/

namespace A044538.P8485238995982260561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044538.P8485238995982260561

/-!
# A044539: Numbers n such that string 2,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044539, there is no canonical definition to state claims against.
-/

/-! ## A044539.P14943092533942887682

`A044159(n+1)-1`
-/

namespace A044539.P14943092533942887682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044159 (n + 1) - 1

end

end A044539.P14943092533942887682

/-! ## A044539.P17796278793064154203

`A233583(A044159(n+1))`
-/

namespace A044539.P17796278793064154203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044159 (n + 1)).toNat

end

end A044539.P17796278793064154203

/-!
# A044540: Numbers n such that string 3,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044540, there is no canonical definition to state claims against.
-/

/-! ## A044540.P3040764878120124196

`A044160(n+1)-1`
-/

namespace A044540.P3040764878120124196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044160 (n + 1) - 1

end

end A044540.P3040764878120124196

/-! ## A044540.P8735478446328734014

`A233583(A044160(n+1))`
-/

namespace A044540.P8735478446328734014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044160 (n + 1)).toNat

end

end A044540.P8735478446328734014

/-!
# A044541: Numbers n such that string 3,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044541, there is no canonical definition to state claims against.
-/

/-! ## A044541.P3857774676671219222

`A044161(n+1)-1`
-/

namespace A044541.P3857774676671219222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044161 (n + 1) - 1

end

end A044541.P3857774676671219222

/-! ## A044541.P6809320927054689254

`A233583(A044161(n+1))`
-/

namespace A044541.P6809320927054689254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044161 (n + 1)).toNat

end

end A044541.P6809320927054689254

/-!
# A044542: Numbers n such that string 3,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044542, there is no canonical definition to state claims against.
-/

/-! ## A044542.P9440565403398872437

`A335823(Δ[A044541(n+1)])+A044161(n+1)`
-/

namespace A044542.P9440565403398872437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335823 (f1 (n + 1) - f1 n).toNat + A044161 (n + 1)

end

end A044542.P9440565403398872437

/-! ## A044542.P5075231659875280596

`2*A044541(n+1)-A115510(A044160(n+1)-1)`
-/

namespace A044542.P5075231659875280596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044541 (n + 1) - A115510 (A044160 (n + 1) - 1).toNat

end

end A044542.P5075231659875280596

/-! ## A044542.P3377236923741458572

`2*A044541(n+1)-(A233583(A044160(n+1)-2)+2)`
-/

namespace A044542.P3377236923741458572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044541 (n + 1) - (A233583 (A044160 (n + 1) - 2).toNat + 2)

end

end A044542.P3377236923741458572

/-! ## A044542.P3264787582090827585

`A233583(A044159(n+1))-(A044158(n+1)-A044161(n+1))`
-/

namespace A044542.P3264787582090827585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044159 (n + 1)).toNat - (A044158 (n + 1) - A044161 (n + 1))

end

end A044542.P3264787582090827585

/-! ## A044542.P3175735244739099592

`A044540(n+1)-(A233583(A044159(n+1))-A044541(n+1))`
-/

namespace A044542.P3175735244739099592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044540 (n + 1) - (A233583 (A044159 (n + 1)).toNat - A044541 (n + 1))

end

end A044542.P3175735244739099592

/-!
# A044543: Numbers n such that string 3,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044543, there is no canonical definition to state claims against.
-/

/-! ## A044543.P9605837140640088063

`A168065(A338507(2^n))+A016993(A016993(n)+2)`
-/

namespace A044543.P9605837140640088063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168065 (A338507 (2 ^ n)).toNat + A016993 (A016993 n + 2).toNat

end

end A044543.P9605837140640088063

/-!
# A044544: Numbers k such that string 3,4 occurs in the base 7 representation of k but not of k+1.

The programs for A044544, there is no canonical definition to state claims against.
-/

/-! ## A044544.P8646558796941890750

`record[A057979(A044521(1+n))]`
-/

namespace A044544.P8646558796941890750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044521 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P8646558796941890750

/-! ## A044544.P2362962572602013979

`record[A025480(A044521(1+n)-1)]`
-/

namespace A044544.P2362962572602013979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044521 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P2362962572602013979

/-! ## A044544.P15309264748557091017

`record[A106466(A044521(1+n)-3)]`
-/

namespace A044544.P15309264748557091017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A044521 (1 + n) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P15309264748557091017

/-! ## A044544.P1092343062198135299

`record[A025480(xor(1, A044521(n+1)))]`
-/

namespace A044544.P1092343062198135299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A044521 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044544.P1092343062198135299

/-! ## A044544.P14414519671621040633

`A044164(n+1)-1`
-/

namespace A044544.P14414519671621040633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044164 (n + 1) - 1

end

end A044544.P14414519671621040633

/-!
# A044545: Numbers n such that string 3,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044545, there is no canonical definition to state claims against.
-/

/-! ## A044545.P8560592755808124832

`A044164(n+1)+A268354(A044164(n+1))-1`
-/

namespace A044545.P8560592755808124832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044164 (n + 1) + (A268354 (A044164 (n + 1)).toNat - 1)

end

end A044545.P8560592755808124832

/-! ## A044545.P4245928482968586982

`record[A057979(A044523(n+1))]`
-/

namespace A044545.P4245928482968586982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044545.P4245928482968586982

/-! ## A044545.P1787692160892495021

`A044165(n+1)-1`
-/

namespace A044545.P1787692160892495021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044165 (n + 1) - 1

end

end A044545.P1787692160892495021

/-! ## A044545.P5817886068560063570

`A233583(A044165(n+1))`
-/

namespace A044545.P5817886068560063570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044165 (n + 1)).toNat

end

end A044545.P5817886068560063570

/-!
# A044546: Numbers n such that string 3,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044546, there is no canonical definition to state claims against.
-/

/-! ## A044546.P11321363502676292437

`A044166(n+1)-1`
-/

namespace A044546.P11321363502676292437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044166 (n + 1) - 1

end

end A044546.P11321363502676292437

/-! ## A044546.P11101296160656796329

`A233583(A044166(n+1))`
-/

namespace A044546.P11101296160656796329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044166 (n + 1)).toNat

end

end A044546.P11101296160656796329

/-!
# A044547: Numbers n such that string 4,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044547, there is no canonical definition to state claims against.
-/

/-! ## A044547.P9316268254146611551

`A044167(n+1)-1`
-/

namespace A044547.P9316268254146611551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044167 (n + 1) - 1

end

end A044547.P9316268254146611551

/-! ## A044547.P17635653806350595947

`A113520(A044167(n+1))`
-/

namespace A044547.P17635653806350595947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044167 (n + 1)).toNat

end

end A044547.P17635653806350595947

/-! ## A044547.P7440795899790301489

`∩[A043914(n+1), A276872(n+1)]`
-/

namespace A044547.P7440795899790301489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044547.P7440795899790301489

/-!
# A044548: Numbers n such that string 4,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044548, there is no canonical definition to state claims against.
-/

/-! ## A044548.P9947255195897554328

`A044168(n+1)-1`
-/

namespace A044548.P9947255195897554328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044168 (n + 1) - 1

end

end A044548.P9947255195897554328

/-! ## A044548.P5979506309168207570

`A132270(7*A044168(n+1))`
-/

namespace A044548.P5979506309168207570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (7 * A044168 (n + 1)).toNat

end

end A044548.P5979506309168207570

/-! ## A044548.P5714345438307984604

`A233583(A044168(n+1))`
-/

namespace A044548.P5714345438307984604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044168 (n + 1)).toNat

end

end A044548.P5714345438307984604

/-!
# A044549: Numbers n such that string 4,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044549, there is no canonical definition to state claims against.
-/

/-! ## A044549.P10663110080817036630

`A044169(n+1)-1`
-/

namespace A044549.P10663110080817036630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044169 (n + 1) - 1

end

end A044549.P10663110080817036630

/-! ## A044549.P10712680445811454109

`A233583(A044169(n+1))`
-/

namespace A044549.P10712680445811454109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044169 (n + 1)).toNat

end

end A044549.P10712680445811454109

/-!
# A044550: Numbers n such that string 4,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044550, there is no canonical definition to state claims against.
-/

/-! ## A044550.P7575090886134066330

`A044548(n+1)+A044548(n+1)-(A044166(n+1)-1)`
-/

namespace A044550.P7575090886134066330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044548 (n + 1) + A044548 (n + 1) - (A044166 (n + 1) - 1)

end

end A044550.P7575090886134066330

/-! ## A044550.P13886713100900065036

`A044549(n+1)+1+A044545(n+1)-A044164(n+1)`
-/

namespace A044550.P13886713100900065036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044549 (n + 1) + (1 + A044545 (n + 1)) - A044164 (n + 1)

end

end A044550.P13886713100900065036

/-! ## A044550.P5558796448983731436

`A321654(A156951(n))+A044168(n+1)`
-/

namespace A044550.P5558796448983731436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321654 (A156951 n).toNat + A044168 (n + 1)

end

end A044550.P5558796448983731436

/-!
# A044551: Numbers n such that string 4,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044551, there is no canonical definition to state claims against.
-/

/-! ## A044551.P1064241947096039793

`A157271(A044027(2*(n+1))-(2*n+1))`
-/

namespace A044551.P1064241947096039793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044027 (2 * (n + 1)) - (2 * n + 1 : ℤ)).toNat

end

end A044551.P1064241947096039793

/-! ## A044551.P4109555106440365848

`A120263(A175126(n)^n+2)+49*n+31`
-/

namespace A044551.P4109555106440365848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A175126 n ^ n + 2).toNat + (49 * n + 31 : ℤ)

end

end A044551.P4109555106440365848

/-! ## A044551.P2359691965406031979

`A001817(A263017(n+1)^n)+49*n+31`
-/

namespace A044551.P2359691965406031979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A263017 (n + 1) ^ n).toNat + (49 * n + 31 : ℤ)

end

end A044551.P2359691965406031979

/-!
# A044552: Numbers n such that string 4,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044552, there is no canonical definition to state claims against.
-/

/-! ## A044552.P13130719254639192896

`A044172(n+1)-1`
-/

namespace A044552.P13130719254639192896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044172 (n + 1) - 1

end

end A044552.P13130719254639192896

/-! ## A044552.P6666014895903834295

`A233583(A044172(n+1))`
-/

namespace A044552.P6666014895903834295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044172 (n + 1)).toNat

end

end A044552.P6666014895903834295

/-!
# A044553: Numbers n such that string 4,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044553, there is no canonical definition to state claims against.
-/

/-! ## A044553.P591404505888064263

`A044173(n+1)-1`
-/

namespace A044553.P591404505888064263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044173 (n + 1) - 1

end

end A044553.P591404505888064263

/-! ## A044553.P5386853990003794701

`A233583(A044173(n+1))`
-/

namespace A044553.P5386853990003794701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044173 (n + 1)).toNat

end

end A044553.P5386853990003794701

/-!
# A044554: Numbers n such that string 5,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044554, there is no canonical definition to state claims against.
-/

/-! ## A044554.P268692635378572968

`A044174(n+1)-1`
-/

namespace A044554.P268692635378572968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044174 (n + 1) - 1

end

end A044554.P268692635378572968

/-! ## A044554.P5000782616361915155

`A233583(A044174(n+1))`
-/

namespace A044554.P5000782616361915155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044174 (n + 1)).toNat

end

end A044554.P5000782616361915155

/-!
# A044555: Numbers n such that string 5,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044555, there is no canonical definition to state claims against.
-/

/-! ## A044555.P17500460231635820500

`A044175(n+1)-1`
-/

namespace A044555.P17500460231635820500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044175 (n + 1) - 1

end

end A044555.P17500460231635820500

/-! ## A044555.P3631652799759991090

`A233583(A044175(n+1))`
-/

namespace A044555.P3631652799759991090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044175 (n + 1)).toNat

end

end A044555.P3631652799759991090

/-!
# A044556: Numbers n such that string 5,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044556, there is no canonical definition to state claims against.
-/

/-! ## A044556.P9905161920053160688

`A044176(n+1)-1`
-/

namespace A044556.P9905161920053160688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044176 (n + 1) - 1

end

end A044556.P9905161920053160688

/-! ## A044556.P10063027766813655286

`A233583(A044176(n+1))`
-/

namespace A044556.P10063027766813655286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044176 (n + 1)).toNat

end

end A044556.P10063027766813655286

/-!
# A044557: Numbers n such that string 5,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044557, there is no canonical definition to state claims against.
-/

/-! ## A044557.P7676764409325175545

`A044177(n+1)-1`
-/

namespace A044557.P7676764409325175545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044177 (n + 1) - 1

end

end A044557.P7676764409325175545

/-! ## A044557.P8855184964965785146

`A233583(A044177(n+1))`
-/

namespace A044557.P8855184964965785146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044177 (n + 1)).toNat

end

end A044557.P8855184964965785146

/-!
# A044558: Numbers n such that string 5,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044558, there is no canonical definition to state claims against.
-/

/-! ## A044558.P6043479944590881808

`2*A044557(n+1)-(A044176(n+1)-1)`
-/

namespace A044558.P6043479944590881808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044557 (n + 1) - (A044176 (n + 1) - 1)

end

end A044558.P6043479944590881808

/-! ## A044558.P3696764050586188558

`or(A044177(n+1), A321538(A334581(n)))`
-/

namespace A044558.P3696764050586188558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044177 (n + 1)) (A321538 (A334581 n).toNat)

end

end A044558.P3696764050586188558

/-! ## A044558.P5437448097837417485

`A044176(n+1)+A014963(A147208(n+1))`
-/

namespace A044558.P5437448097837417485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044176 (n + 1) + A014963 (A147208 (n + 1)).toNat

end

end A044558.P5437448097837417485

/-! ## A044558.P14032819079683870792

`or(A044177(n+1), A122357(A256069(n)))`
-/

namespace A044558.P14032819079683870792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044177 (n + 1)) (A122357 (A256069 n).toNat)

end

end A044558.P14032819079683870792

/-!
# A044559: Numbers n such that string 5,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044559, there is no canonical definition to state claims against.
-/

/-! ## A044559.P8060813829467291477

`record[A057979(A044551(2+n))]`
-/

namespace A044559.P8060813829467291477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044551 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044559.P8060813829467291477

/-! ## A044559.P18229444613830712504

`A004526(A044551(2*(1+n)))`
-/

namespace A044559.P18229444613830712504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044551 (2 * (1 + n))).toNat

end

end A044559.P18229444613830712504

/-! ## A044559.P6507736530253681602

`A057979(A044551(2*(n+1)))`
-/

namespace A044559.P6507736530253681602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044551 (2 * (n + 1))).toNat

end

end A044559.P6507736530253681602

/-! ## A044559.P6231743961120480867

`A060681(A044551(2*(n+1))-1)`
-/

namespace A044559.P6231743961120480867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A044551 (2 * (n + 1)) - 1).toNat

end

end A044559.P6231743961120480867

/-! ## A044559.P4678048483000532523

`A110654(A044551(2*(n+1))-1)`
-/

namespace A044559.P4678048483000532523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A044551 (2 * (n + 1)) - 1).toNat

end

end A044559.P4678048483000532523

/-! ## A044559.P17816131291689517084

`A166514(A044551(2*(n+1))-1)`
-/

namespace A044559.P17816131291689517084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044551 (2 * (n + 1)) - 1).toNat

end

end A044559.P17816131291689517084

/-!
# A044560: Numbers k such that string 5,6 occurs in the base 7 representation of k but not of k+1.

The programs for A044560, there is no canonical definition to state claims against.
-/

/-! ## A044560.P13558637331769807823

`∩[A043931(n+1), A047287(n+1)]`
-/

namespace A044560.P13558637331769807823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P13558637331769807823

/-! ## A044560.P4309189036976457157

`∩[A043931(n+1), A047295(n+1)]`
-/

namespace A044560.P4309189036976457157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P4309189036976457157

/-! ## A044560.P6702093676755874789

`∩[A043931(n+1), A047299(n+1)]`
-/

namespace A044560.P6702093676755874789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P6702093676755874789

/-! ## A044560.P800577037586626671

`∩[A043931(n+1), A047301(n+1)]`
-/

namespace A044560.P800577037586626671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P800577037586626671

/-! ## A044560.P5866186108306934744

`∩[A043931(n+1), A047302(n+1)]`
-/

namespace A044560.P5866186108306934744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P5866186108306934744

/-! ## A044560.P779665226393815115

`∩[A043931(n+1), A314458(n)]`
-/

namespace A044560.P779665226393815115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044560.P779665226393815115

/-! ## A044560.P14635902084768791161

`filter[A043931(n+1), A011657(#)]`
-/

namespace A044560.P14635902084768791161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011657 (f1 j).toNat = 1) n)

end

end A044560.P14635902084768791161

/-! ## A044560.P1348038335645806982

`filter[A043931(n+1), A098457(#)]`
-/

namespace A044560.P1348038335645806982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098457 (f1 j).toNat = 1) n)

end

end A044560.P1348038335645806982

/-! ## A044560.P8671796052008243747

`filter[A043931(n+1), A258869(#)]`
-/

namespace A044560.P8671796052008243747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A258869 (f1 j).toNat = 1) n)

end

end A044560.P8671796052008243747

/-! ## A044560.P1002146061626366937

`filter[A043931(n+1), A274950(#)]`
-/

namespace A044560.P1002146061626366937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A274950 (f1 j).toNat = 1) n)

end

end A044560.P1002146061626366937

/-!
# A044561: Numbers n such that string 6,0 occurs in the base 7 representation of n but not of n+1.

The programs for A044561, there is no canonical definition to state claims against.
-/

/-! ## A044561.P6463108456897621021

`record[A057979(A044555(n+2))]`
-/

namespace A044561.P6463108456897621021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044555 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044561.P6463108456897621021

/-! ## A044561.P10308787758111722490

`A044181(n+1)-1`
-/

namespace A044561.P10308787758111722490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044181 (n + 1) - 1

end

end A044561.P10308787758111722490

/-! ## A044561.P4805282142666770651

`A233583(A044181(n+1))`
-/

namespace A044561.P4805282142666770651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044181 (n + 1)).toNat

end

end A044561.P4805282142666770651

/-!
# A044562: Numbers n such that string 6,1 occurs in the base 7 representation of n but not of n+1.

The programs for A044562, there is no canonical definition to state claims against.
-/

/-! ## A044562.P5344772051018343548

`A044182(n+1)-1`
-/

namespace A044562.P5344772051018343548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044182 (n + 1) - 1

end

end A044562.P5344772051018343548

/-! ## A044562.P12768795318131634967

`A233583(A044182(n+1))`
-/

namespace A044562.P12768795318131634967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044182 (n + 1)).toNat

end

end A044562.P12768795318131634967

/-!
# A044563: Numbers n such that string 6,2 occurs in the base 7 representation of n but not of n+1.

The programs for A044563, there is no canonical definition to state claims against.
-/

/-! ## A044563.P2106530724695796242

`A044183(n+1)-1`
-/

namespace A044563.P2106530724695796242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044183 (n + 1) - 1

end

end A044563.P2106530724695796242

/-! ## A044563.P555844949633561536

`A233583(A044183(n+1))`
-/

namespace A044563.P555844949633561536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044183 (n + 1)).toNat

end

end A044563.P555844949633561536

/-!
# A044564: Numbers n such that string 6,3 occurs in the base 7 representation of n but not of n+1.

The programs for A044564, there is no canonical definition to state claims against.
-/

/-! ## A044564.P2902940599631347540

`A044184(1+n)-1`
-/

namespace A044564.P2902940599631347540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044184 (1 + n) - 1

end

end A044564.P2902940599631347540

/-! ## A044564.P5655564952355789803

`-1+A044184(n+1)`
-/

namespace A044564.P5655564952355789803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044184 (n + 1)

end

end A044564.P5655564952355789803

/-! ## A044564.P2633907612408838626

`A233583(A044184(n+1))`
-/

namespace A044564.P2633907612408838626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044184 (n + 1)).toNat

end

end A044564.P2633907612408838626

/-!
# A044565: Numbers n such that string 6,4 occurs in the base 7 representation of n but not of n+1.

The programs for A044565, there is no canonical definition to state claims against.
-/

/-! ## A044565.P15905641027960053767

`A044185(n+1)-1`
-/

namespace A044565.P15905641027960053767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044185 (n + 1) - 1

end

end A044565.P15905641027960053767

/-! ## A044565.P12022697466155660629

`A233583(A044185(n+1))`
-/

namespace A044565.P12022697466155660629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044185 (n + 1)).toNat

end

end A044565.P12022697466155660629

/-!
# A044566: Numbers n such that string 6,5 occurs in the base 7 representation of n but not of n+1.

The programs for A044566, there is no canonical definition to state claims against.
-/

/-! ## A044566.P17387745563830145976

`or(A044185(n+1), A185284(A276094(n)²))`
-/

namespace A044566.P17387745563830145976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044185 (n + 1)) (A185284 (A276094 n ^ 2).toNat)

end

end A044566.P17387745563830145976

/-! ## A044566.P2670916977525222164

`A147220(A135223(n+1))+A044184(n+1)`
-/

namespace A044566.P2670916977525222164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (A135223 (n + 1)).toNat + A044184 (n + 1)

end

end A044566.P2670916977525222164

/-! ## A044566.P588182578818586829

`or(A033718(A025529(n+1)), A044185(n+1))`
-/

namespace A044566.P588182578818586829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033718 (A025529 (n + 1)).toNat) (A044185 (n + 1))

end

end A044566.P588182578818586829

/-!
# A044567: Numbers n such that string 6,6 occurs in the base 7 representation of n but not of n+1.

The programs for A044567, there is no canonical definition to state claims against.
-/

/-! ## A044567.P11556263894532786343

`49*(n+1)-1`
-/

namespace A044567.P11556263894532786343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * (n + 1) : ℤ) - 1

end

end A044567.P11556263894532786343

/-!
# A044568: Numbers n such that string 0,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044568, there is no canonical definition to state claims against.
-/

/-! ## A044568.P16968149952941617274

`A100710(A044250(1+n))`
-/

namespace A044568.P16968149952941617274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100710 (A044250 (1 + n)).toNat

end

end A044568.P16968149952941617274

/-! ## A044568.P277095841062306328

`A233583(A044187(n+1)+A008834(n+1))`
-/

namespace A044568.P277095841062306328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044187 (n + 1) + A008834 (n + 1)).toNat

end

end A044568.P277095841062306328

/-! ## A044568.P2844090751520813404

`A233583(A044187(n+1))+A056191(n+1)`
-/

namespace A044568.P2844090751520813404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044187 (n + 1)).toNat + A056191 (n + 1)

end

end A044568.P2844090751520813404

/-! ## A044568.P16744375024009033578

`A056191(A187829(n+1))+A004771(A004771(n))`
-/

namespace A044568.P16744375024009033578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (A187829 (n + 1)).toNat + A004771 (A004771 n).toNat

end

end A044568.P16744375024009033578

/-!
# A044569: Numbers n such that string 0,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044569, there is no canonical definition to state claims against.
-/

/-! ## A044569.P7107809426933896329

`or(A044188(n+1)-1, A044188(n+1))`
-/

namespace A044569.P7107809426933896329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044188 (n + 1) - 1) (A044188 (n + 1))

end

end A044569.P7107809426933896329

/-! ## A044569.P6371385939830171121

`or(A044188(n+1), A322016(A044188(n+1)))`
-/

namespace A044569.P6371385939830171121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044188 (n + 1)) (A322016 (A044188 (n + 1)).toNat)

end

end A044569.P6371385939830171121

/-! ## A044569.P1679081809287644597

`A086799(A044188(n+1))`
-/

namespace A044569.P1679081809287644597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044188 (n + 1)).toNat

end

end A044569.P1679081809287644597

/-! ## A044569.P7104991054082307516

`A044189(n+1)-1`
-/

namespace A044569.P7104991054082307516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044189 (n + 1) - 1

end

end A044569.P7104991054082307516

/-! ## A044569.P178688562489964150

`A124741(A044189(n+1))`
-/

namespace A044569.P178688562489964150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044189 (n + 1)).toNat

end

end A044569.P178688562489964150

/-!
# A044570: Numbers n such that string 0,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044570, there is no canonical definition to state claims against.
-/

/-! ## A044570.P7778108401626341991

`A057168(A044189(1+n)-1)`
-/

namespace A044570.P7778108401626341991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044189 (1 + n) - 1).toNat

end

end A044570.P7778108401626341991

/-! ## A044570.P15606262552207809832

`A044190(n+1)-1`
-/

namespace A044570.P15606262552207809832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044190 (n + 1) - 1

end

end A044570.P15606262552207809832

/-! ## A044570.P14452763154101902098

`A113520(A044190(n+1))`
-/

namespace A044570.P14452763154101902098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044190 (n + 1)).toNat

end

end A044570.P14452763154101902098

/-! ## A044570.P16548548599955737494

`A140977(A044569(n+1))`
-/

namespace A044570.P16548548599955737494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044569 (n + 1)).toNat

end

end A044570.P16548548599955737494

/-!
# A044571: Numbers n such that string 0,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044571, there is no canonical definition to state claims against.
-/

/-! ## A044571.P4978725642617926841

`or(A044190(n+1)-1, A044190(n+1))`
-/

namespace A044571.P4978725642617926841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044190 (n + 1) - 1) (A044190 (n + 1))

end

end A044571.P4978725642617926841

/-! ## A044571.P1249564449934976054

`or(A044190(n+1), A322018(A044190(n+1)))`
-/

namespace A044571.P1249564449934976054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044190 (n + 1)) (A322018 (A044190 (n + 1)).toNat)

end

end A044571.P1249564449934976054

/-! ## A044571.P12488553948908793332

`A086799(A044190(1+n))`
-/

namespace A044571.P12488553948908793332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044190 (1 + n)).toNat

end

end A044571.P12488553948908793332

/-! ## A044571.P11931197119916462171

`A044191(n+1)-1`
-/

namespace A044571.P11931197119916462171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044191 (n + 1) - 1

end

end A044571.P11931197119916462171

/-! ## A044571.P18250667695285417496

`A124741(A044191(n+1))`
-/

namespace A044571.P18250667695285417496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044191 (n + 1)).toNat

end

end A044571.P18250667695285417496

/-!
# A044572: Numbers n such that string 0,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044572, there is no canonical definition to state claims against.
-/

/-! ## A044572.P5416719326947161552

`A044192(n+1)-1`
-/

namespace A044572.P5416719326947161552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044192 (n + 1) - 1

end

end A044572.P5416719326947161552

/-! ## A044572.P3048883501799095789

`A233583(A044192(n+1))`
-/

namespace A044572.P3048883501799095789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044192 (n + 1)).toNat

end

end A044572.P3048883501799095789

/-!
# A044573: Numbers n such that string 0,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044573, there is no canonical definition to state claims against.
-/

/-! ## A044573.P2654603740359063369

`or(A044192(n+1)-1, A044192(n+1))`
-/

namespace A044573.P2654603740359063369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044192 (n + 1) - 1) (A044192 (n + 1))

end

end A044573.P2654603740359063369

/-! ## A044573.P16645607216221928690

`or(A057428(n)+A044192(n+1), A044192(n+1))`
-/

namespace A044573.P16645607216221928690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044192 (n + 1)) (A044192 (n + 1))

end

end A044573.P16645607216221928690

/-! ## A044573.P15830571896541312447

`or(1, A322018(A044192(n+1)))`
-/

namespace A044573.P15830571896541312447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322018 (A044192 (n + 1)).toNat)

end

end A044573.P15830571896541312447

/-! ## A044573.P6140030660973019255

`A086799(A044192(1+n))`
-/

namespace A044573.P6140030660973019255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044192 (1 + n)).toNat

end

end A044573.P6140030660973019255

/-! ## A044573.P1394279163949660880

`A057168(A044192(n+1))-1`
-/

namespace A044573.P1394279163949660880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044192 (n + 1)).toNat - 1

end

end A044573.P1394279163949660880

/-! ## A044573.P5856569948751334945

`A044193(n+1)+(-1)`
-/

namespace A044573.P5856569948751334945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044193 (n + 1) + (-1)

end

end A044573.P5856569948751334945

/-!
# A044574: Numbers k such that string 0,6 occurs in the base 8 representation of k but not of k+1.

The programs for A044574, there is no canonical definition to state claims against.
-/

/-! ## A044574.P12305557911603317503

`A057168(A044193(1+n)-1)`
-/

namespace A044574.P12305557911603317503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044193 (1 + n) - 1).toNat

end

end A044574.P12305557911603317503

/-! ## A044574.P6821109399208314411

`A044194(n+1)-1`
-/

namespace A044574.P6821109399208314411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044194 (n + 1) - 1

end

end A044574.P6821109399208314411

/-! ## A044574.P16695959922814090364

`A113520(A044194(n+1))`
-/

namespace A044574.P16695959922814090364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044194 (n + 1)).toNat

end

end A044574.P16695959922814090364

/-! ## A044574.P15183539124617681723

`A140977(A044573(n+1))`
-/

namespace A044574.P15183539124617681723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044573 (n + 1)).toNat

end

end A044574.P15183539124617681723

/-!
# A044575: Numbers n such that string 0,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044575, there is no canonical definition to state claims against.
-/

/-! ## A044575.P12769147973004397656

`or(A044194(n+1)-1, A044194(n+1))`
-/

namespace A044575.P12769147973004397656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044194 (n + 1) - 1) (A044194 (n + 1))

end

end A044575.P12769147973004397656

/-! ## A044575.P6586173367642562129

`or(A057428(n)+A044194(n+1), A044194(n+1))`
-/

namespace A044575.P6586173367642562129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044194 (n + 1)) (A044194 (n + 1))

end

end A044575.P6586173367642562129

/-! ## A044575.P2834495923072236317

`or(7, A322018(A044194(n+1)))`
-/

namespace A044575.P2834495923072236317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A322018 (A044194 (n + 1)).toNat)

end

end A044575.P2834495923072236317

/-! ## A044575.P4847665367192834818

`A086799(A044194(n+1))`
-/

namespace A044575.P4847665367192834818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044194 (n + 1)).toNat

end

end A044575.P4847665367192834818

/-! ## A044575.P17787033424163543079

`or(7, A044574(n+1)+1)`
-/

namespace A044575.P17787033424163543079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A044574 (n + 1) + 1)

end

end A044575.P17787033424163543079

/-!
# A044576: Numbers n such that string 1,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044576, there is no canonical definition to state claims against.
-/

/-! ## A044576.P17489982768091234546

`filter[A043932(n+1), A125720(#)]`
-/

namespace A044576.P17489982768091234546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125720 (f1 j).toNat = 1) n)

end

end A044576.P17489982768091234546

/-! ## A044576.P15816942357230728086

`∩[A043932(n+1), A050622(n+1)]`
-/

namespace A044576.P15816942357230728086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044576.P15816942357230728086

/-! ## A044576.P6613987253100653

`∑[A348676((A348687(n+2)+3)²+5)]`
-/

namespace A044576.P6613987253100653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348676 ((A348687 (n + 2) + 3) ^ 2 + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044576.P6613987253100653

/-! ## A044576.P254338669780314709

`∩[A043932(n+1), A282025(n)]`
-/

namespace A044576.P254338669780314709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044576.P254338669780314709

/-! ## A044576.P10359478984566304718

`∩[A043932(n+1), A350780(n+1)]`
-/

namespace A044576.P10359478984566304718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044576.P10359478984566304718

/-!
# A044577: Numbers n such that string 1,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044577, there is no canonical definition to state claims against.
-/

/-! ## A044577.P4137894803466836680

`or(A044196(n+1)-1, A044196(n+1))`
-/

namespace A044577.P4137894803466836680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044196 (n + 1) - 1) (A044196 (n + 1))

end

end A044577.P4137894803466836680

/-! ## A044577.P14099412736066734096

`A135534(A044196(n+1))+A044196(n+1)`
-/

namespace A044577.P14099412736066734096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044196 (n + 1)).toNat + A044196 (n + 1)

end

end A044577.P14099412736066734096

/-! ## A044577.P1703001418478852988

`A086799(A044196(n+1))`
-/

namespace A044577.P1703001418478852988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044196 (n + 1)).toNat

end

end A044577.P1703001418478852988

/-!
# A044578: Numbers k such that string 1,2 occurs in the base 8 representation of k but not of k+1.

The programs for A044578, there is no canonical definition to state claims against.
-/

/-! ## A044578.P12708531040635241357

`A057168(A044197(n+1)-1)`
-/

namespace A044578.P12708531040635241357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044197 (n + 1) - 1).toNat

end

end A044578.P12708531040635241357

/-! ## A044578.P5473590105204133513

`A044198(n+1)+A008836(A066195(n))`
-/

namespace A044578.P5473590105204133513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) + A008836 (A066195 n).toNat

end

end A044578.P5473590105204133513

/-! ## A044578.P3408384622900286334

`A044198(n+1)-A168184(A114146(n))`
-/

namespace A044578.P3408384622900286334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) - A168184 (A114146 n).toNat

end

end A044578.P3408384622900286334

/-! ## A044578.P12316522424961624423

`A044198(n+1)-A057427(A307465(n))`
-/

namespace A044578.P12316522424961624423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) - A057427 (A307465 n).toNat

end

end A044578.P12316522424961624423

/-! ## A044578.P2326705710131705916

`A044198(n+1)-A168184(A321659(n))`
-/

namespace A044578.P2326705710131705916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044198 (n + 1) - A168184 (A321659 n).toNat

end

end A044578.P2326705710131705916

/-!
# A044579: Numbers n such that string 1,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044579, there is no canonical definition to state claims against.
-/

/-! ## A044579.P9670399573215277843

`or(A044198(1+n)-1, A044198(1+n))`
-/

namespace A044579.P9670399573215277843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044198 (1 + n) - 1) (A044198 (1 + n))

end

end A044579.P9670399573215277843

/-! ## A044579.P14472566401584153364

`or(A057428(n)+A044198(n+1), A044198(n+1))`
-/

namespace A044579.P14472566401584153364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044198 (n + 1)) (A044198 (n + 1))

end

end A044579.P14472566401584153364

/-! ## A044579.P7563717857028320981

`or(3, A322018(A044198(n+1)))`
-/

namespace A044579.P7563717857028320981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A322018 (A044198 (n + 1)).toNat)

end

end A044579.P7563717857028320981

/-! ## A044579.P10677945190378369890

`A086799(A044198(1+n))`
-/

namespace A044579.P10677945190378369890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044198 (1 + n)).toNat

end

end A044579.P10677945190378369890

/-! ## A044579.P15655129027624705995

`A057168(A044198(n+1))-2`
-/

namespace A044579.P15655129027624705995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044198 (n + 1)).toNat - 2

end

end A044579.P15655129027624705995

/-!
# A044580: Numbers n such that string 1,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044580, there is no canonical definition to state claims against.
-/

/-! ## A044580.P674937704958567211

`A044200(A077168(n))-1`
-/

namespace A044580.P674937704958567211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (A077168 n).toNat - 1

end

end A044580.P674937704958567211

/-! ## A044580.P2404137668235293403

`A308778(∑[n]²)+A044200(n+1)`
-/

namespace A044580.P2404137668235293403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + A044200 (n + 1)

end

end A044580.P2404137668235293403

/-! ## A044580.P13069302897340609013

`A044200(n+1)-A094404(A000041(n))`
-/

namespace A044580.P13069302897340609013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (n + 1) - A094404 (A000041 n).toNat

end

end A044580.P13069302897340609013

/-! ## A044580.P17268970298598343605

`A044200(n+1)-A094404(A060577(n))`
-/

namespace A044580.P17268970298598343605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (n + 1) - A094404 (A060577 n).toNat

end

end A044580.P17268970298598343605

/-! ## A044580.P10914839932850259994

`A044200(n+1)-A168185(A001006(n))`
-/

namespace A044580.P10914839932850259994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044200 (n + 1) - A168185 (A001006 n).toNat

end

end A044580.P10914839932850259994

/-!
# A044581: Numbers k such that string 1,5 occurs in the base 8 representation of k but not of k+1.

The programs for A044581, there is no canonical definition to state claims against.
-/

/-! ## A044581.P10675485885101105672

`or(A044200(n+1)-1, A044200(n+1))`
-/

namespace A044581.P10675485885101105672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044200 (n + 1) - 1) (A044200 (n + 1))

end

end A044581.P10675485885101105672

/-! ## A044581.P6231466976251700967

`A135534(A044200(n+1))+A044200(n+1)`
-/

namespace A044581.P6231466976251700967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044200 (n + 1)).toNat + A044200 (n + 1)

end

end A044581.P6231466976251700967

/-! ## A044581.P13051946620912721743

`A086799(A044200(1+n))`
-/

namespace A044581.P13051946620912721743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044200 (1 + n)).toNat

end

end A044581.P13051946620912721743

/-! ## A044581.P9159467345505734964

`A044201(A187829(n+1))-1`
-/

namespace A044581.P9159467345505734964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044201 (A187829 (n + 1)).toNat - 1

end

end A044581.P9159467345505734964

/-! ## A044581.P16664636478753861546

`A044201(n+1)-A028240(n)!`
-/

namespace A044581.P16664636478753861546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044201 (n + 1) - (Nat.factorial (A028240 n).toNat : ℤ)

end

end A044581.P16664636478753861546

/-!
# A044582: Numbers n such that string 1,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044582, there is no canonical definition to state claims against.
-/

/-! ## A044582.P709512433553539272

`A057168(A044201(n+1)-1)`
-/

namespace A044582.P709512433553539272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044201 (n + 1) - 1).toNat

end

end A044582.P709512433553539272

/-! ## A044582.P2847312883524768809

`A057428(A257621(n))+A044202(n+1)`
-/

namespace A044582.P2847312883524768809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A257621 n).toNat + A044202 (n + 1)

end

end A044582.P2847312883524768809

/-! ## A044582.P3295263118021965172

`A044202(n+1)-A001222(A066195(n))`
-/

namespace A044582.P3295263118021965172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044202 (n + 1) - A001222 (A066195 n).toNat

end

end A044582.P3295263118021965172

/-! ## A044582.P7723337231225008983

`A057428(A069798(n+1))+A044202(n+1)`
-/

namespace A044582.P7723337231225008983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A069798 (n + 1)).toNat + A044202 (n + 1)

end

end A044582.P7723337231225008983

/-!
# A044583: Numbers n such that string 1,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044583, there is no canonical definition to state claims against.
-/

/-! ## A044583.P14388186735668441383

`or(A044202(n+1)-1, A044202(n+1))`
-/

namespace A044583.P14388186735668441383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044202 (n + 1) - 1) (A044202 (n + 1))

end

end A044583.P14388186735668441383

/-! ## A044583.P6943070978140183312

`A135534(A044202(n+1))+A044202(n+1)`
-/

namespace A044583.P6943070978140183312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044202 (n + 1)).toNat + A044202 (n + 1)

end

end A044583.P6943070978140183312

/-! ## A044583.P7981716371715700623

`A086799(A044202(1+n))`
-/

namespace A044583.P7981716371715700623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044202 (1 + n)).toNat

end

end A044583.P7981716371715700623

/-! ## A044583.P5321035403311526644

`filter[A043944(n+1), A309873(A182187(#))]`
-/

namespace A044583.P5321035403311526644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A309873 (A182187 (f1 j).toNat).toNat = 1) n)

end

end A044583.P5321035403311526644

/-! ## A044583.P5884965783944610641

`A044203(n+1)-A146096(A271517(n+3))`
-/

namespace A044583.P5884965783944610641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044203 (n + 1) - A146096 (A271517 (n + 3)).toNat

end

end A044583.P5884965783944610641

/-!
# A044584: Numbers n such that string 2,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044584, there is no canonical definition to state claims against.
-/

/-! ## A044584.P4396312429369020907

`A044204(n+1)-1`
-/

namespace A044584.P4396312429369020907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044204 (n + 1) - 1

end

end A044584.P4396312429369020907

/-! ## A044584.P1935638822272365388

`A233583(A044204(n+1))`
-/

namespace A044584.P1935638822272365388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044204 (n + 1)).toNat

end

end A044584.P1935638822272365388

/-! ## A044584.P2586844662639778059

`A057428(A003242(n))+A044204(n+1)`
-/

namespace A044584.P2586844662639778059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003242 n).toNat + A044204 (n + 1)

end

end A044584.P2586844662639778059

/-! ## A044584.P14083534057139386889

`A115510(A044204(n+1))+A057428(n)`
-/

namespace A044584.P14083534057139386889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A044204 (n + 1)).toNat + A057428 n

end

end A044584.P14083534057139386889

/-!
# A044585: Numbers n such that string 2,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044585, there is no canonical definition to state claims against.
-/

/-! ## A044585.P13233490588485826772

`or(A044204(n+1)-1, A044204(n+1))`
-/

namespace A044585.P13233490588485826772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044204 (n + 1) - 1) (A044204 (n + 1))

end

end A044585.P13233490588485826772

/-! ## A044585.P4520450270567122942

`or(A057428(n)+A044204(n+1), A044204(n+1))`
-/

namespace A044585.P4520450270567122942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044204 (n + 1)) (A044204 (n + 1))

end

end A044585.P4520450270567122942

/-! ## A044585.P11495461838647244541

`A135534(A044204(n+1))+A044204(n+1)`
-/

namespace A044585.P11495461838647244541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044204 (n + 1)).toNat + A044204 (n + 1)

end

end A044585.P11495461838647244541

/-! ## A044585.P14697785432817992702

`A086799(A044204(1+n))`
-/

namespace A044585.P14697785432817992702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044204 (1 + n)).toNat

end

end A044585.P14697785432817992702

/-! ## A044585.P8052051251592190649

`or(A044584(n+1), A233583(A044584(n+1)+2))`
-/

namespace A044585.P8052051251592190649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044584 (n + 1)) (A233583 (A044584 (n + 1) + 2).toNat)

end

end A044585.P8052051251592190649

/-!
# A044586: Numbers n such that string 2,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044586, there is no canonical definition to state claims against.
-/

/-! ## A044586.P11569868304528141880

`A057168(A044205(n+1)-1)`
-/

namespace A044586.P11569868304528141880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044205 (n + 1) - 1).toNat

end

end A044586.P11569868304528141880

/-! ## A044586.P12504452644845418065

`A115510(A043945(2*(n+1)))-8`
-/

namespace A044586.P12504452644845418065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A043945 (2 * (n + 1))).toNat - 8

end

end A044586.P12504452644845418065

/-!
# A044587: Numbers n such that string 2,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044587, there is no canonical definition to state claims against.
-/

/-! ## A044587.P12792719458797397097

`or(A044206(n+1)-1, A044206(n+1))`
-/

namespace A044587.P12792719458797397097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044206 (n + 1) - 1) (A044206 (n + 1))

end

end A044587.P12792719458797397097

/-! ## A044587.P16132075900809644902

`A086799(A044206(n+1))`
-/

namespace A044587.P16132075900809644902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044206 (n + 1)).toNat

end

end A044587.P16132075900809644902

/-! ## A044587.P16052822193414481716

`A044207(n+1)-1`
-/

namespace A044587.P16052822193414481716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044207 (n + 1) - 1

end

end A044587.P16052822193414481716

/-! ## A044587.P13770792140131861591

`A124741(A044207(n+1))`
-/

namespace A044587.P13770792140131861591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044207 (n + 1)).toNat

end

end A044587.P13770792140131861591

/-!
# A044588: Numbers n such that string 2,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044588, there is no canonical definition to state claims against.
-/

/-! ## A044588.P3940346385546522708

`A044208(n+1)-1`
-/

namespace A044588.P3940346385546522708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044208 (n + 1) - 1

end

end A044588.P3940346385546522708

/-! ## A044588.P8493842128735302940

`A233583(A044208(n+1))`
-/

namespace A044588.P8493842128735302940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044208 (n + 1)).toNat

end

end A044588.P8493842128735302940

/-!
# A044589: Numbers n such that string 2,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044589, there is no canonical definition to state claims against.
-/

/-! ## A044589.P389021348044974810

`or(A044208(n+1)-1, A044208(n+1))`
-/

namespace A044589.P389021348044974810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044208 (n + 1) - 1) (A044208 (n + 1))

end

end A044589.P389021348044974810

/-! ## A044589.P11900807688771363194

`or(A044208(n+1), A140670(A044208(n+1)))`
-/

namespace A044589.P11900807688771363194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044208 (n + 1)) (A140670 (A044208 (n + 1)).toNat)

end

end A044589.P11900807688771363194

/-! ## A044589.P10137367274345904012

`A086799(A044208(1+n))`
-/

namespace A044589.P10137367274345904012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044208 (1 + n)).toNat

end

end A044589.P10137367274345904012

/-! ## A044589.P1118837649594813484

`A044209(n+1)-1`
-/

namespace A044589.P1118837649594813484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044209 (n + 1) - 1

end

end A044589.P1118837649594813484

/-! ## A044589.P13567248210241899883

`A124741(A044209(n+1))`
-/

namespace A044589.P13567248210241899883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044209 (n + 1)).toNat

end

end A044589.P13567248210241899883

/-!
# A044590: Numbers n such that string 2,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044590, there is no canonical definition to state claims against.
-/

/-! ## A044590.P11173166659701909492

`A044209(1+n)-A214546(A044209(n+1))`
-/

namespace A044590.P11173166659701909492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044209 (1 + n) - A214546 (A044209 (n + 1)).toNat

end

end A044590.P11173166659701909492

/-! ## A044590.P6709809140923016416

`A044210(n+1)-1`
-/

namespace A044590.P6709809140923016416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044210 (n + 1) - 1

end

end A044590.P6709809140923016416

/-! ## A044590.P6132808073265252626

`A113520(A044210(n+1))`
-/

namespace A044590.P6132808073265252626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044210 (n + 1)).toNat

end

end A044590.P6132808073265252626

/-! ## A044590.P2353640845200417154

`A140977(A044589(n+1))`
-/

namespace A044590.P2353640845200417154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044589 (n + 1)).toNat

end

end A044590.P2353640845200417154

/-!
# A044591: Numbers n such that string 2,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044591, there is no canonical definition to state claims against.
-/

/-! ## A044591.P10935690804400417977

`or(A044210(n+1)-1, A044210(n+1))`
-/

namespace A044591.P10935690804400417977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044210 (n + 1) - 1) (A044210 (n + 1))

end

end A044591.P10935690804400417977

/-! ## A044591.P2622226118220116179

`A086799(A044210(1+n))`
-/

namespace A044591.P2622226118220116179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044210 (1 + n)).toNat

end

end A044591.P2622226118220116179

/-! ## A044591.P2444017917977329925

`∩[A043949(n+1), A166257(n+1)]`
-/

namespace A044591.P2444017917977329925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044591.P2444017917977329925

/-! ## A044591.P4259583879518403960

`∩[A043949(n+1), A217460(n+1)]`
-/

namespace A044591.P4259583879518403960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044591.P4259583879518403960

/-! ## A044591.P1857894020777962915

`∩[A043949(n+1), A173263(n+1)]`
-/

namespace A044591.P1857894020777962915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044591.P1857894020777962915

/-!
# A044592: Numbers n such that string 3,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044592, there is no canonical definition to state claims against.
-/

/-! ## A044592.P10415623405744099325

`A044212(n+1)-1`
-/

namespace A044592.P10415623405744099325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044212 (n + 1) - 1

end

end A044592.P10415623405744099325

/-! ## A044592.P17888958814141781465

`A243109(A044213(n+1)%A248075(n+1))-1`
-/

namespace A044592.P17888958814141781465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (Int.tmod (A044213 (n + 1)) (A248075 (n + 1))).toNat - 1

end

end A044592.P17888958814141781465

/-! ## A044592.P15446328037332985467

`A233583(A044212(n+1))`
-/

namespace A044592.P15446328037332985467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044212 (n + 1)).toNat

end

end A044592.P15446328037332985467

/-!
# A044593: Numbers n such that string 3,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044593, there is no canonical definition to state claims against.
-/

/-! ## A044593.P4889050576380753156

`or(A044212(n+1)-1, A044212(n+1))`
-/

namespace A044593.P4889050576380753156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044212 (n + 1) - 1) (A044212 (n + 1))

end

end A044593.P4889050576380753156

/-! ## A044593.P4795561019101829194

`or(A057428(n)+A044212(n+1), A044212(n+1))`
-/

namespace A044593.P4795561019101829194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044212 (n + 1)) (A044212 (n + 1))

end

end A044593.P4795561019101829194

/-! ## A044593.P12991067908400363529

`A086799(A044212(n+1))`
-/

namespace A044593.P12991067908400363529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044212 (n + 1)).toNat

end

end A044593.P12991067908400363529

/-! ## A044593.P8421763193160068748

`A044213(n+1)-1`
-/

namespace A044593.P8421763193160068748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044213 (n + 1) - 1

end

end A044593.P8421763193160068748

/-! ## A044593.P9095684073149944501

`A124741(A044213(n+1))`
-/

namespace A044593.P9095684073149944501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044213 (n + 1)).toNat

end

end A044593.P9095684073149944501

/-!
# A044594: Numbers n such that string 3,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044594, there is no canonical definition to state claims against.
-/

/-! ## A044594.P14154941199783035649

`A044213(n+1)-A214546(A044213(n+1))`
-/

namespace A044594.P14154941199783035649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044213 (n + 1) - A214546 (A044213 (n + 1)).toNat

end

end A044594.P14154941199783035649

/-! ## A044594.P17029576941110794964

`or(18, A044592(n+1))`
-/

namespace A044594.P17029576941110794964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 18 (A044592 (n + 1))

end

end A044594.P17029576941110794964

/-! ## A044594.P3954784698071138837

`A140977(A044593(n+1))`
-/

namespace A044594.P3954784698071138837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044593 (n + 1)).toNat

end

end A044594.P3954784698071138837

/-!
# A044595: Numbers n such that string 3,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044595, there is no canonical definition to state claims against.
-/

/-! ## A044595.P8984229628740769301

`or(A044214(n+1)-1, A044214(n+1))`
-/

namespace A044595.P8984229628740769301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044214 (n + 1) - 1) (A044214 (n + 1))

end

end A044595.P8984229628740769301

/-! ## A044595.P363635209986607073

`A086799(A044214(1+n))`
-/

namespace A044595.P363635209986607073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044214 (1 + n)).toNat

end

end A044595.P363635209986607073

/-! ## A044595.P3309179625170119267

`record[A140977(A044211(n+1)-1)]`
-/

namespace A044595.P3309179625170119267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044211 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044595.P3309179625170119267

/-! ## A044595.P9649100305099424770

`record[A140977(A044213(n+1))-1]`
-/

namespace A044595.P9649100305099424770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044213 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044595.P9649100305099424770

/-! ## A044595.P15298414860584458317

`record[or(9, A140977(A044593(n+1)))]`
-/

namespace A044595.P15298414860584458317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A140977 (A044593 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044595.P15298414860584458317

/-!
# A044596: Numbers n such that string 3,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044596, there is no canonical definition to state claims against.
-/

/-! ## A044596.P11354012078100380593

`A057168(A044215(1+n)-2)`
-/

namespace A044596.P11354012078100380593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044215 (1 + n) - 2).toNat

end

end A044596.P11354012078100380593

/-! ## A044596.P14502263938035538286

`A044216(n+1)-1`
-/

namespace A044596.P14502263938035538286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044216 (n + 1) - 1

end

end A044596.P14502263938035538286

/-! ## A044596.P12239585333782666313

`A233583(A044216(n+1))`
-/

namespace A044596.P12239585333782666313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044216 (n + 1)).toNat

end

end A044596.P12239585333782666313

/-!
# A044597: Numbers n such that string 3,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044597, there is no canonical definition to state claims against.
-/

/-! ## A044597.P3744318206374606129

`or(A044216(n+1)-1, A044216(n+1))`
-/

namespace A044597.P3744318206374606129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044216 (n + 1) - 1) (A044216 (n + 1))

end

end A044597.P3744318206374606129

/-! ## A044597.P9170647991065762774

`or(A044216(n+1), A140670(A044216(n+1)))`
-/

namespace A044597.P9170647991065762774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044216 (n + 1)) (A140670 (A044216 (n + 1)).toNat)

end

end A044597.P9170647991065762774

/-! ## A044597.P13382919560737567724

`A086799(A044216(1+n))`
-/

namespace A044597.P13382919560737567724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044216 (1 + n)).toNat

end

end A044597.P13382919560737567724

/-! ## A044597.P15523328370128190242

`A044217(n+1)-1`
-/

namespace A044597.P15523328370128190242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044217 (n + 1) - 1

end

end A044597.P15523328370128190242

/-! ## A044597.P7520915421435560066

`A124741(A044217(n+1))`
-/

namespace A044597.P7520915421435560066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044217 (n + 1)).toNat

end

end A044597.P7520915421435560066

/-!
# A044598: Numbers n such that string 3,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044598, there is no canonical definition to state claims against.
-/

/-! ## A044598.P17571493355088027050

`A044217(n+1)-A214546(A044217(n+1))`
-/

namespace A044598.P17571493355088027050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044217 (n + 1) - A214546 (A044217 (n + 1)).toNat

end

end A044598.P17571493355088027050

/-! ## A044598.P800474781387860730

`A044218(n+1)-1`
-/

namespace A044598.P800474781387860730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044218 (n + 1) - 1

end

end A044598.P800474781387860730

/-! ## A044598.P643781446119134870

`A113520(A044218(n+1))`
-/

namespace A044598.P643781446119134870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044218 (n + 1)).toNat

end

end A044598.P643781446119134870

/-! ## A044598.P10701847590156522814

`A140977(A044597(n+1))`
-/

namespace A044598.P10701847590156522814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044597 (n + 1)).toNat

end

end A044598.P10701847590156522814

/-!
# A044599: Numbers n such that string 3,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044599, there is no canonical definition to state claims against.
-/

/-! ## A044599.P3600917167114666164

`or(A044218(n+1)-1, A044218(n+1))`
-/

namespace A044599.P3600917167114666164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044218 (n + 1) - 1) (A044218 (n + 1))

end

end A044599.P3600917167114666164

/-! ## A044599.P2385035300216140119

`or(A044218(n+1), A088837(A044218(n+1)))`
-/

namespace A044599.P2385035300216140119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044218 (n + 1)) (A088837 (A044218 (n + 1)).toNat)

end

end A044599.P2385035300216140119

/-! ## A044599.P10927506921403140142

`A086799(A044218(1+n))`
-/

namespace A044599.P10927506921403140142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044218 (1 + n)).toNat

end

end A044599.P10927506921403140142

/-! ## A044599.P9668323540920657348

`A044219(n+1)-1`
-/

namespace A044599.P9668323540920657348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044219 (n + 1) - 1

end

end A044599.P9668323540920657348

/-! ## A044599.P3178586218804608027

`A124741(A044219(n+1))`
-/

namespace A044599.P3178586218804608027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044219 (n + 1)).toNat

end

end A044599.P3178586218804608027

