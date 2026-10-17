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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
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
# A296700: Numbers whose base-6 digits d(m), d(m-1), ... d(0) have #(rises) = #(falls); see Comments.

The programs for A296700, there is no canonical definition to state claims against.
-/

/-! ## A296700.P9287677761071518979

`eq[A037804(n+1), A037821(n+1)]+1`
-/

namespace A296700.P9287677761071518979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296700.P9287677761071518979

/-! ## A296700.P3600927798190810973

`eq[A037813(n+1), A037829(n+1)]+1`
-/

namespace A296700.P3600927798190810973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296700.P3600927798190810973

/-! ## A296700.P8905525571352054613

`eq[A037814(A020657(n+2)), A037829(n+1)]+1`
-/

namespace A296700.P8905525571352054613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A020657 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296700.P8905525571352054613

/-! ## A296700.P16176181023393548548

`eq[A037817(A007092(n+1)), A037829(n+1)]+1`
-/

namespace A296700.P16176181023393548548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007092 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296700.P16176181023393548548

/-! ## A296700.P4678928618256795375

`eq[A037817(A084984(n+2)), A037829(n+1)]+1`
-/

namespace A296700.P4678928618256795375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A084984 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296700.P4678928618256795375

/-! ## A296700.P6986755182166597890

`eq[A037817(A202267(n+2)), A037829(n+1)]+1`
-/

namespace A296700.P6986755182166597890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A202267 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296700.P6986755182166597890

/-! ## A296700.P6080934226241295523

`eq[A037817(A137386(n+2)), A037829(n+1)]+1`
-/

namespace A296700.P6080934226241295523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A137386 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296700.P6080934226241295523

/-!
# A296701: Numbers whose base-6 digits d(m), d(m-1), ... d(0) have #(rises) > #(falls); see Comments.

The programs for A296701, there is no canonical definition to state claims against.
-/

/-! ## A296701.P12382133032355385602

`lt[A037821(n+1), A037804(n+1)]+1`
-/

namespace A296701.P12382133032355385602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296701.P12382133032355385602

/-! ## A296701.P1549093296709934428

`lt[A037829(n+1), A037813(n+1)]+1`
-/

namespace A296701.P1549093296709934428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296701.P1549093296709934428

/-! ## A296701.P9753827927123040152

`A020725(lt[A037821(n+1), A037804(n+1)])`
-/

namespace A296701.P9753827927123040152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296701.P9753827927123040152

/-! ## A296701.P4451016252519858685

`A020725(lt[A037829(n+1), A037813(n+1)])`
-/

namespace A296701.P4451016252519858685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296701.P4451016252519858685

/-! ## A296701.P7066374385089291305

`A326178(lt[A037821(n+1), A037804(n+1)])`
-/

namespace A296701.P7066374385089291305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296701.P7066374385089291305

/-! ## A296701.P8186760836072013733

`A326178(lt[A037829(n+1), A037813(n+1)])`
-/

namespace A296701.P8186760836072013733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296701.P8186760836072013733

/-!
# A296702: Numbers whose base-6 digits d(m), d(m-1), ... d(0) have #(rises) < #(falls); see Comments.

The programs for A296702, there is no canonical definition to state claims against.
-/

/-! ## A296702.P9428378176480929492

`lt[A037804(n+1), A037821(n+1)]+1`
-/

namespace A296702.P9428378176480929492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296702.P9428378176480929492

/-! ## A296702.P11015319710308100029

`lt[A037813(n+1), A037829(n+1)]+1`
-/

namespace A296702.P11015319710308100029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296702.P11015319710308100029

/-! ## A296702.P4550365793109835510

`A020725(lt[A037804(n+1), A037821(n+1)])`
-/

namespace A296702.P4550365793109835510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296702.P4550365793109835510

/-! ## A296702.P9409225651784235664

`A020725(lt[A037813(n+1), A037829(n+1)])`
-/

namespace A296702.P9409225651784235664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296702.P9409225651784235664

/-! ## A296702.P4450551608748652780

`A326178(lt[A037804(n+1), A037821(n+1)])`
-/

namespace A296702.P4450551608748652780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296702.P4450551608748652780

/-! ## A296702.P2682488824878318163

`A326178(lt[A037813(n+1), A037829(n+1)])`
-/

namespace A296702.P2682488824878318163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296702.P2682488824878318163

/-!
# A296703: Numbers whose base-7 digits d(m), d(m-1), ... d(0) have #(rises) = #(falls); see Comments.

The programs for A296703, there is no canonical definition to state claims against.
-/

/-! ## A296703.P14668591460581079335

`eq[A037805(n+1), A037822(n+1)]+1`
-/

namespace A296703.P14668591460581079335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296703.P14668591460581079335

/-! ## A296703.P2939087075554751168

`eq[A037814(n+1), A037830(n+1)]+1`
-/

namespace A296703.P2939087075554751168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296703.P2939087075554751168

/-! ## A296703.P4926477586957864602

`eq[A037805(n+1), A037825(A007093(n+1))]+1`
-/

namespace A296703.P4926477586957864602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296703.P4926477586957864602

/-! ## A296703.P849743531555056390

`eq[A037805(n+1), A037825(A028374(n+2))]+1`
-/

namespace A296703.P849743531555056390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A028374 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296703.P849743531555056390

/-! ## A296703.P1635254386710067185

`eq[A037805(n+1), A037825(A168501(n+2))]+1`
-/

namespace A296703.P1635254386710067185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A168501 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296703.P1635254386710067185

/-! ## A296703.P4144289714000755786

`eq[A037817(A168501(n+2)), A037830(n+1)]+1`
-/

namespace A296703.P4144289714000755786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A168501 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296703.P4144289714000755786

/-!
# A296704: Numbers whose base-7 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296704, there is no canonical definition to state claims against.
-/

/-! ## A296704.P3143115393213678253

`lt[A037822(n+1), A037805(n+1)]+1`
-/

namespace A296704.P3143115393213678253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296704.P3143115393213678253

/-! ## A296704.P8198374136263656061

`lt[A037830(n+1), A037814(n+1)]+1`
-/

namespace A296704.P8198374136263656061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296704.P8198374136263656061

/-! ## A296704.P13420783398988455644

`lt[A037825(A007093(n+1)), A037805(n+1)]+1`
-/

namespace A296704.P13420783398988455644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007093 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296704.P13420783398988455644

/-! ## A296704.P11061984402437366800

`lt[A037825(A028374(n+2)), A037805(n+1)]+1`
-/

namespace A296704.P11061984402437366800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A028374 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296704.P11061984402437366800

/-! ## A296704.P9913079429864021856

`lt[A037825(A168501(n+2)), A037805(n+1)]+1`
-/

namespace A296704.P9913079429864021856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A168501 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296704.P9913079429864021856

/-! ## A296704.P11451750531892234923

`lt[A037830(n+1), A037817(A168501(n+2))]+1`
-/

namespace A296704.P11451750531892234923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A168501 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296704.P11451750531892234923

/-! ## A296704.P5168815651249597809

`lt[C(n, A319655(n)), A165071(n)]`
-/

namespace A296704.P5168815651249597809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A319655 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296704.P5168815651249597809

/-!
# A296705: Numbers whose base-7 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296705, there is no canonical definition to state claims against.
-/

/-! ## A296705.P8563406728595238417

`lt[A037805(n+1), A037822(n+1)]+1`
-/

namespace A296705.P8563406728595238417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296705.P8563406728595238417

/-! ## A296705.P18323141431713020417

`lt[A037814(n+1), A037830(n+1)]+1`
-/

namespace A296705.P18323141431713020417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296705.P18323141431713020417

/-! ## A296705.P16104027244514289949

`lt[A037805(n+1), A037825(A007093(n+1))]+1`
-/

namespace A296705.P16104027244514289949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296705.P16104027244514289949

/-! ## A296705.P7196010308999282544

`lt[A037805(n+1), A037825(A168501(n+2))]+1`
-/

namespace A296705.P7196010308999282544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A168501 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296705.P7196010308999282544

/-! ## A296705.P15953024271577417976

`lt[A037817(A168501(n+2)), A037830(n+1)]+1`
-/

namespace A296705.P15953024271577417976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A168501 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296705.P15953024271577417976

/-! ## A296705.P9730317836354885013

`lt[A037805(n+1), A037825(A028374(n+2))]+1`
-/

namespace A296705.P9730317836354885013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A028374 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296705.P9730317836354885013

/-! ## A296705.P4157699464608466209

`eq[A055955(n), A233583(A165071(n)+1)]`
-/

namespace A296705.P4157699464608466209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A165071 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296705.P4157699464608466209

/-!
# A296706: Numbers whose base-8 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296706, there is no canonical definition to state claims against.
-/

/-! ## A296706.P17759295828527836943

`eq[A037806(n+1), A037823(n+1)]+1`
-/

namespace A296706.P17759295828527836943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296706.P17759295828527836943

/-! ## A296706.P6651864101538265130

`eq[A037815(n+1), A037831(n+1)]+1`
-/

namespace A296706.P6651864101538265130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296706.P6651864101538265130

/-! ## A296706.P7960582384865703399

`eq[A037815(n+1), A037832(A037477(n+1))]+1`
-/

namespace A296706.P7960582384865703399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A037477 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296706.P7960582384865703399

/-! ## A296706.P11068465667953698536

`eq[A037815(n+1), A037833(A008539(n+2))]+1`
-/

namespace A296706.P11068465667953698536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A008539 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296706.P11068465667953698536

/-! ## A296706.P4757221885740989350

`A043711(n+1)%(A161206(2*(n+2))+1)`
-/

namespace A296706.P4757221885740989350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043711 (n + 1)) (A161206 (2 * (n + 2)) + 1)

end

end A296706.P4757221885740989350

/-!
# A296707: Numbers whose base-8 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296707, there is no canonical definition to state claims against.
-/

/-! ## A296707.P15239957178402200666

`lt[A037823(n+1), A037806(n+1)]+1`
-/

namespace A296707.P15239957178402200666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296707.P15239957178402200666

/-! ## A296707.P7753094912666992527

`lt[A037831(n+1), A037815(n+1)]+1`
-/

namespace A296707.P7753094912666992527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296707.P7753094912666992527

/-! ## A296707.P14664198946665489854

`lt[A265539(n+4), A255693(n)]`
-/

namespace A296707.P14664198946665489854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296707.P14664198946665489854

/-! ## A296707.P4568245285529011853

`lt[A230288(n), A230288(A255693(n))]`
-/

namespace A296707.P4568245285529011853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230288 (A255693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296707.P4568245285529011853

/-! ## A296707.P14196452923938821934

`A097448(A297140(n+1))`
-/

namespace A296707.P14196452923938821934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A297140 (n + 1)).toNat

end

end A296707.P14196452923938821934

/-!
# A296708: Numbers whose base-8 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296708, there is no canonical definition to state claims against.
-/

/-! ## A296708.P17570535702540984155

`lt[A037806(n+1), A037823(n+1)]+1`
-/

namespace A296708.P17570535702540984155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296708.P17570535702540984155

/-! ## A296708.P8126631783975257282

`lt[A037815(n+1), A037831(n+1)]+1`
-/

namespace A296708.P8126631783975257282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296708.P8126631783975257282

/-! ## A296708.P15502526291800143277

`lt[1, Δ[A265522(n)]]`
-/

namespace A296708.P15502526291800143277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296708.P15502526291800143277

/-! ## A296708.P8349649238971278783

`lt[A178340(n), A055957(n)]`
-/

namespace A296708.P8349649238971278783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296708.P8349649238971278783

/-! ## A296708.P4433262957012028138

`lt[sqrt(A091951(n)), A055957(n)]`
-/

namespace A296708.P4433262957012028138
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A091951 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A296708.P4433262957012028138

/-!
# A296709: Numbers whose base-9 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296709, there is no canonical definition to state claims against.
-/

/-! ## A296709.P1183788633723758740

`eq[A037807(n+1), A037824(n+1)]+1`
-/

namespace A296709.P1183788633723758740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296709.P1183788633723758740

/-! ## A296709.P5053529263371844083

`eq[A037816(n+1), A037832(n+1)]+1`
-/

namespace A296709.P5053529263371844083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296709.P5053529263371844083

/-! ## A296709.P16590646824837508067

`eq[A037824(A030108(n+1)), A037824(n+1)]+1`
-/

namespace A296709.P16590646824837508067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A030108 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296709.P16590646824837508067

/-! ## A296709.P11714085704547901498

`eq[A037808(A007095(n+1)), A037824(n+1)]+1`
-/

namespace A296709.P11714085704547901498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007095 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296709.P11714085704547901498

/-! ## A296709.P4602216779779437878

`eq[A037808(A052404(n+2)), A037824(n+1)]+1`
-/

namespace A296709.P4602216779779437878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052404 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296709.P4602216779779437878

/-! ## A296709.P737855489932529079

`eq[A037808(A052414(n+2)), A037824(n+1)]+1`
-/

namespace A296709.P737855489932529079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052414 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296709.P737855489932529079

/-!
# A296710: Numbers whose base-9 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296710, there is no canonical definition to state claims against.
-/

/-! ## A296710.P7930195115622145947

`lt[A037824(n+1), A037807(n+1)]+1`
-/

namespace A296710.P7930195115622145947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296710.P7930195115622145947

/-! ## A296710.P7936955791760217318

`lt[A037832(n+1), A037816(n+1)]+1`
-/

namespace A296710.P7936955791760217318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296710.P7936955791760217318

/-! ## A296710.P933050754612412014

`∩[A297269(n+1), A023751(A118759(n+2))]`
-/

namespace A296710.P933050754612412014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (A118759 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296710.P933050754612412014

/-! ## A296710.P17368599622791546617

`lt[A118759(n), A030108(A319657(n))]`
-/

namespace A296710.P17368599622791546617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A319657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296710.P17368599622791546617

/-! ## A296710.P8806660371800254688

`lt[A323048(n+1), A030108(A319657(n))]`
-/

namespace A296710.P8806660371800254688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A319657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296710.P8806660371800254688

/-!
# A296711: Numbers whose base-9 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296711, there is no canonical definition to state claims against.
-/

/-! ## A296711.P13605768043305184328

`lt[A037807(n+1), A037824(n+1)]+1`
-/

namespace A296711.P13605768043305184328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296711.P13605768043305184328

/-! ## A296711.P16440325029869206130

`lt[A037816(n+1), A037832(n+1)]+1`
-/

namespace A296711.P16440325029869206130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296711.P16440325029869206130

/-! ## A296711.P15253303165448999917

`lt[A037824(A030108(n+1)), A037824(n+1)]+1`
-/

namespace A296711.P15253303165448999917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A030108 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296711.P15253303165448999917

/-! ## A296711.P5320806737078778121

`∩[A297267(n+1), A023765(A118759(n+2))]`
-/

namespace A296711.P5320806737078778121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023765 (A118759 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296711.P5320806737078778121

/-! ## A296711.P11407026997241170391

`lt[A083928(n), A055959(n)]`
-/

namespace A296711.P11407026997241170391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296711.P11407026997241170391

/-!
# A296712: Numbers whose base-10 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296712, there is no canonical definition to state claims against.
-/

/-! ## A296712.P12780700737426521256

`eq[A037808(n+1), A037825(n+1)]+1`
-/

namespace A296712.P12780700737426521256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296712.P12780700737426521256

/-! ## A296712.P2078454686600762139

`eq[A037817(n+1), A037833(n+1)]+1`
-/

namespace A296712.P2078454686600762139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296712.P2078454686600762139

/-! ## A296712.P1398681988116499146

`record[A043713(A263104(3*(n+4)))]`
-/

namespace A296712.P1398681988116499146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043713 (A263104 (3 * (n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296712.P1398681988116499146

/-! ## A296712.P866928951669900788

`A043713(n+1)%A096929(n+1)`
-/

namespace A296712.P866928951669900788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043713 (n + 1)) (A096929 (n + 1))

end

end A296712.P866928951669900788

/-! ## A296712.P3782985013287714765

`A043713(n+1)%A261077(A000041(n))`
-/

namespace A296712.P3782985013287714765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043713 (n + 1)) (A261077 (A000041 n).toNat)

end

end A296712.P3782985013287714765

/-!
# A296713: Numbers whose base-10 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296713, there is no canonical definition to state claims against.
-/

/-! ## A296713.P5125649259546535689

`lt[A037825(n+1), A037808(n+1)]+1`
-/

namespace A296713.P5125649259546535689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296713.P5125649259546535689

/-! ## A296713.P3260999468151659702

`lt[A037833(n+1), A037817(n+1)]+1`
-/

namespace A296713.P3260999468151659702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296713.P3260999468151659702

/-! ## A296713.P13882108432805856961

`A020725(lt[A037833(n+1), A037817(n+1)])`
-/

namespace A296713.P13882108432805856961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296713.P13882108432805856961

/-! ## A296713.P258993557640867577

`A326178(lt[A037833(n+1), A037817(n+1)])`
-/

namespace A296713.P258993557640867577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296713.P258993557640867577

/-! ## A296713.P16130510176944425872

`record[A004185(10*A071589(n+1))]`
-/

namespace A296713.P16130510176944425872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (10 * A071589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296713.P16130510176944425872

/-! ## A296713.P14504871380133796047

`eq[A000038(A256756(n)), A193581(n)]`
-/

namespace A296713.P14504871380133796047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A256756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296713.P14504871380133796047

/-! ## A296713.P14847214901502901057

`eq[A187036(A108782(n)), A193581(n)]`
-/

namespace A296713.P14847214901502901057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187036 (A108782 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296713.P14847214901502901057

/-! ## A296713.P12446869922982773439

`eq[A004086(n), A194233(A233583(n+1))]`
-/

namespace A296713.P12446869922982773439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194233 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296713.P12446869922982773439

/-! ## A296713.P16240536268401237724

`eq[A033909(n), A202022(n)]`
-/

namespace A296713.P16240536268401237724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296713.P16240536268401237724

/-!
# A296714: Numbers whose base-10 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296714, there is no canonical definition to state claims against.
-/

/-! ## A296714.P16626673044997478507

`lt[A037808(n+1), A037825(n+1)]+1`
-/

namespace A296714.P16626673044997478507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296714.P16626673044997478507

/-! ## A296714.P9360500966715406415

`lt[A037817(n+1), A037833(n+1)]+1`
-/

namespace A296714.P9360500966715406415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296714.P9360500966715406415

/-! ## A296714.P7371398333719104731

`A020725(lt[A037817(n+1), A037833(n+1)])`
-/

namespace A296714.P7371398333719104731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296714.P7371398333719104731

/-! ## A296714.P4751858045507344083

`A326178(lt[A037817(n+1), A037833(n+1)])`
-/

namespace A296714.P4751858045507344083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296714.P4751858045507344083

/-! ## A296714.P17861120262399100149

`eq[A000038(A256756(n)), A108782(n)]`
-/

namespace A296714.P17861120262399100149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A256756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296714.P17861120262399100149

/-! ## A296714.P6414600278912206977

`eq[A108782(n), A187036(A151949(n))]`
-/

namespace A296714.P6414600278912206977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187036 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296714.P6414600278912206977

/-! ## A296714.P11977806358482021861

`eq[A108782(n), A187036(A347688(n))]`
-/

namespace A296714.P11977806358482021861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187036 (A347688 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296714.P11977806358482021861

/-! ## A296714.P17954778469456029115

`eq[A000007(A033909(n)), A108782(n)]`
-/

namespace A296714.P17954778469456029115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296714.P17954778469456029115

/-!
# A296715: a(n) = [x^n] 1/Sum_{k=0..n} k^k*x^k.

The programs for A296715, there is no canonical definition to state claims against.
-/

/-! ## A296715.P2123316275918010009

`A001608(n)-A109167(A060690(n))`
-/

namespace A296715.P2123316275918010009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n - A109167 (A060690 n).toNat

end

end A296715.P2123316275918010009

/-!
# A296716: Numbers congruent to {7, 11, 13, 29} mod 30.

The programs for A296716, the canonical program `A296716.P4695475035178069096` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296716 has offset 1).

The definition of A296716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296716.P4695475035178069096

`a(n-4)+30` with `a(0)=7, a(1)=11, a(2)=13, a(3)=29`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296716

/-- `a(n-4)+30` -/
def P4695475035178069096.Spec : Prop :=
  ∀ n, (P4695475035178069096.a n : ℤ) = A296716 (n + 1)

theorem P4695475035178069096.correct : P4695475035178069096.Spec := by
  intro n
  simp only [A296716, Nat.add_sub_cancel]

end A296716

/-! ## A296716.P12276135173573257703

`∑[2^(4-(n+1)%4)]-1`
-/

namespace A296716.P12276135173573257703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (4 - (((n + 1) % 4 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A296716.P12276135173573257703

namespace A296716

/-- `∑[2^(4-(n+1)%4)]-1` -/
def P12276135173573257703.Spec : Prop :=
  ∀ n, P12276135173573257703.a n = (A296716 (n + 1) : ℚ)

end A296716

/-! ## A296716.P6586179508322341066

`∑[2^(or(3, n+1)-n)]-1`
-/

namespace A296716.P6586179508322341066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.lor 3 (n + 1) : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A296716.P6586179508322341066

namespace A296716

/-- `∑[2^(or(3, n+1)-n)]-1` -/
def P6586179508322341066.Spec : Prop :=
  ∀ n, P6586179508322341066.a n = (A296716 (n + 1) : ℚ)

end A296716

/-! ## A296716.P11183934072676576699

`∑[A000079(or(3, n+1)-n)]-1`
-/

namespace A296716.P11183934072676576699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.lor 3 (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A296716.P11183934072676576699

namespace A296716

/-- `∑[A000079(or(3, n+1)-n)]-1` -/
def P11183934072676576699.Spec : Prop :=
  ∀ n, P11183934072676576699.a n = A296716 (n + 1)

end A296716

/-! ## A296716.P15748320790259094219

`∑[2*A007376(A311383(a(n-1)))]` with `a(0)=7`
-/

namespace A296716.P15748320790259094219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  2 * A007376 (A311383 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296716.P15748320790259094219

namespace A296716

/-- `∑[2*A007376(A311383(a(n-1)))]` -/
def P15748320790259094219.Spec : Prop :=
  ∀ n, P15748320790259094219.a n = A296716 (n + 1)

end A296716

/-! ## A296716.P5837648784001004124

`A070884(A047397(n+1))`
-/

namespace A296716.P5837648784001004124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 (A047397 (n + 1)).toNat

end

end A296716.P5837648784001004124

namespace A296716

/-- `A070884(A047397(n+1))` -/
def P5837648784001004124.Spec : Prop :=
  ∀ n, P5837648784001004124.a n = A296716 (n + 1)

end A296716

/-! ## A296716.P1076574935149334802

`A260714(A047533(n+1))`
-/

namespace A296716.P1076574935149334802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260714 (A047533 (n + 1)).toNat

end

end A296716.P1076574935149334802

namespace A296716

/-- `A260714(A047533(n+1))` -/
def P1076574935149334802.Spec : Prop :=
  ∀ n, P1076574935149334802.a n = A296716 (n + 1)

end A296716

/-! ## A296716.P5847600565829441395

`A007775(A047456(n+2))`
-/

namespace A296716.P5847600565829441395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A047456 (n + 2)).toNat

end

end A296716.P5847600565829441395

namespace A296716

/-- `A007775(A047456(n+2))` -/
def P5847600565829441395.Spec : Prop :=
  ∀ n, P5847600565829441395.a n = A296716 (n + 1)

end A296716

/-! ## A296716.P10569970273285052719

`A007775(A047533(n+1)+1)`
-/

namespace A296716.P10569970273285052719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A047533 (n + 1) + 1).toNat

end

end A296716.P10569970273285052719

namespace A296716

/-- `A007775(A047533(n+1)+1)` -/
def P10569970273285052719.Spec : Prop :=
  ∀ n, P10569970273285052719.a n = A296716 (n + 1)

end A296716

/-! ## A296716.P8358434125792667860

`A054403(A047433(n+2))`
-/

namespace A296716.P8358434125792667860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (A047433 (n + 2)).toNat

end

end A296716.P8358434125792667860

namespace A296716

/-- `A054403(A047433(n+2))` -/
def P8358434125792667860.Spec : Prop :=
  ∀ n, P8358434125792667860.a n = A296716 (n + 1)

end A296716

/-! ## A296716.P8480312251992057990

`eq[A040887(n), A284429(n+1)]`
-/

namespace A296716.P8480312251992057990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296716.P8480312251992057990

namespace A296716

/-- `eq[A040887(n), A284429(n+1)]` -/
def P8480312251992057990.Spec : Prop :=
  ∀ n, (P8480312251992057990.a n : ℤ) = A296716 (n + 1)

end A296716

/-! ## A296716.P3003270856764349405

`eq[A316569(n)+2, A027656(A027656(n))]`
-/

namespace A296716.P3003270856764349405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A027656 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296716.P3003270856764349405

namespace A296716

/-- `eq[A316569(n)+2, A027656(A027656(n))]` -/
def P3003270856764349405.Spec : Prop :=
  ∀ n, (P3003270856764349405.a n : ℤ) = A296716 (n + 1)

end A296716

/-! ## A296716.P3220797094911436211

`eq[A115638(n), A316569(n)]`
-/

namespace A296716.P3220797094911436211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296716.P3220797094911436211

namespace A296716

/-- `eq[A115638(n), A316569(n)]` -/
def P3220797094911436211.Spec : Prop :=
  ∀ n, (P3220797094911436211.a n : ℤ) = A296716 (n + 1)

end A296716

/-! ## A296716.P11495520292231053998

`eq[A070430(n), A115314(n+1)]`
-/

namespace A296716.P11495520292231053998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296716.P11495520292231053998

namespace A296716

/-- `eq[A070430(n), A115314(n+1)]` -/
def P11495520292231053998.Spec : Prop :=
  ∀ n, (P11495520292231053998.a n : ℤ) = A296716 (n + 1)

end A296716

/-!
# A296717: Weakly prime-additive numbers: numbers n with at least 2 distinct prime factors that can be represented as n = Sum_{some p|n} p^e_p with e_p > 0.

The programs for A296717, there is no canonical definition to state claims against.
-/

/-! ## A296717.P10911084752669606760

`A302753(A077168(n))`
-/

namespace A296717.P10911084752669606760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302753 (A077168 n).toNat

end

end A296717.P10911084752669606760

/-! ## A296717.P8571315551011131196

`A302753(n+1)%p?[A114254(n)]`
-/

namespace A296717.P8571315551011131196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302753 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A296717.P8571315551011131196

/-! ## A296717.P6149219584671005642

`A302753(A317673(∑[ceil(2^(n-1))]))`
-/

namespace A296717.P6149219584671005642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302753 (A317673 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A296717.P6149219584671005642

/-! ## A296717.P18387059407978093238

`∩[A097216(n+1), A302753(n+1)]`
-/

namespace A296717.P18387059407978093238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296717.P18387059407978093238

/-! ## A296717.P9851948070720552302

`∩[A290965(n+1), A302753(n+1)]`
-/

namespace A296717.P9851948070720552302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296717.P9851948070720552302

/-!
# A296718: Number of n X n 0..1 arrays with each 1 adjacent to 0, 2 or 4 king-move neighboring 1's.

The programs for A296718, there is no canonical definition to state claims against.
-/

/-! ## A296718.P8251620857154508651

`A296725(∑[4*n]+1)`
-/

namespace A296718.P8251620857154508651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296718.P8251620857154508651

/-! ## A296718.P15802948886603406861

`record[A003982(n)*A296725(n+1)]`
-/

namespace A296718.P15802948886603406861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296718.P15802948886603406861

/-! ## A296718.P9303625004976163926

`record[gcd(A141692(n), A296725(n+1))]`
-/

namespace A296718.P9303625004976163926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141692 n) (A296725 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296718.P9303625004976163926

/-! ## A296718.P15857785920224174939

`gcd(A000038(n), A296725(A001844(n)))`
-/

namespace A296718.P15857785920224174939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296725 (A001844 n).toNat)

end

end A296718.P15857785920224174939

/-! ## A296718.P7046848102850361975

`lcm(A054977(n), A296725(A001844(n)))`
-/

namespace A296718.P7046848102850361975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A296725 (A001844 n).toNat)

end

end A296718.P7046848102850361975

/-!
# A296719: Number of n X 2 0..1 arrays with each 1 adjacent to 0, 2 or 4 king-move neighboring 1s.

The programs for A296719, the canonical program `A296719.P9548203853280767223` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296719 has offset 1).

The definition of A296719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296719.P9548203853280767223

`a(n-1)+2*a(n-2)+6*a(n-3)` with `a(0)=3, a(1)=9, a(2)=21`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296719

/-- `a(n-1)+2*a(n-2)+6*a(n-3)` -/
def P9548203853280767223.Spec : Prop :=
  ∀ n, (P9548203853280767223.a n : ℤ) = A296719 (n + 1)

theorem P9548203853280767223.correct : P9548203853280767223.Spec := by
  intro n
  simp only [A296719, Nat.add_sub_cancel]

end A296719

/-! ## A296719.P18123687466950042200

`A296725(∑[n+1]+2)`
-/

namespace A296719.P18123687466950042200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296719.P18123687466950042200

namespace A296719

/-- `A296725(∑[n+1]+2)` -/
def P18123687466950042200.Spec : Prop :=
  ∀ n, P18123687466950042200.a n = A296719 (n + 1)

end A296719

/-! ## A296719.P6823442330856945550

`or(1, A296725(A000096(n)+3))`
-/

namespace A296719.P6823442330856945550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A296725 (A000096 n + 3).toNat)

end

end A296719.P6823442330856945550

namespace A296719

/-- `or(1, A296725(A000096(n)+3))` -/
def P6823442330856945550.Spec : Prop :=
  ∀ n, P6823442330856945550.a n = A296719 (n + 1)

end A296719

/-! ## A296719.P5442223294295974847

`A296725(A000096(n)+3)+A011741(n+6)`
-/

namespace A296719.P5442223294295974847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A000096 n + 3).toNat + A011741 (n + 6)

end

end A296719.P5442223294295974847

namespace A296719

/-- `A296725(A000096(n)+3)+A011741(n+6)` -/
def P5442223294295974847.Spec : Prop :=
  ∀ n, P5442223294295974847.a n = A296719 (n + 1)

end A296719

/-!
# A296720: Number of n X 3 0..1 arrays with each 1 adjacent to 0, 2 or 4 king-move neighboring 1s.

The programs for A296720, there is no canonical definition to state claims against.
-/

/-! ## A296720.P755982059942797705

`A296725(∑[n+2]+4)`
-/

namespace A296720.P755982059942797705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296720.P755982059942797705

/-! ## A296720.P1553069632219563101

`A296725(A167614(n+1))%A001556(n)`
-/

namespace A296720.P1553069632219563101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296725 (A167614 (n + 1)).toNat) (A001556 n)

end

end A296720.P1553069632219563101

/-! ## A296720.P3631119740595997411

`lcm(A014491(2*n+1), A296725(A167499(n)+n))`
-/

namespace A296720.P3631119740595997411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014491 (2 * n + 1)) (A296725 (A167499 n + (n : ℤ)).toNat)

end

end A296720.P3631119740595997411

/-! ## A296720.P15278677785442009685

`A007318(A000217(n))*A296725(A167499(n)+n)`
-/

namespace A296720.P15278677785442009685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A296725 (A167499 n + (n : ℤ)).toNat

end

end A296720.P15278677785442009685

/-! ## A296720.P7568350400812799131

`A001221(A006562(n+1))*A296725(A167499(n)+n)`
-/

namespace A296720.P7568350400812799131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006562 (n + 1)).toNat * A296725 (A167499 n + (n : ℤ)).toNat

end

end A296720.P7568350400812799131

/-!
# A296721: Number of nX4 0..1 arrays with each 1 adjacent to 0, 2 or 4 king-move neighboring 1s.

The programs for A296721, there is no canonical definition to state claims against.
-/

/-! ## A296721.P4475705127662744879

`A296725(A141214(n)+7)`
-/

namespace A296721.P4475705127662744879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A141214 n + 7).toNat

end

end A296721.P4475705127662744879

/-! ## A296721.P7506710922985768844

`A296725(A052905(n)+9)`
-/

namespace A296721.P7506710922985768844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A052905 n + 9).toNat

end

end A296721.P7506710922985768844

/-! ## A296721.P5042203695260730845

`A296725(A167614(n+2)+1)`
-/

namespace A296721.P5042203695260730845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A167614 (n + 2) + 1).toNat

end

end A296721.P5042203695260730845

/-! ## A296721.P4673114311833334273

`A296725(A000124(n+3)+3)`
-/

namespace A296721.P4673114311833334273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A000124 (n + 3) + 3).toNat

end

end A296721.P4673114311833334273

/-! ## A296721.P13712764725188721069

`A296725(A000217(n+3)+4)`
-/

namespace A296721.P13712764725188721069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A000217 (n + 3) + 4).toNat

end

end A296721.P13712764725188721069

/-!
# A296722: Number of nX5 0..1 arrays with each 1 adjacent to 0, 2 or 4 king-move neighboring 1s.

The programs for A296722, there is no canonical definition to state claims against.
-/

/-! ## A296722.P9232967494910702797

`A296725(A167499(n+3))`
-/

namespace A296722.P9232967494910702797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A167499 (n + 3)).toNat

end

end A296722.P9232967494910702797

/-! ## A296722.P15947166731696882633

`A296725(A155212(n)+13)`
-/

namespace A296722.P15947166731696882633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A155212 n + 13).toNat

end

end A296722.P15947166731696882633

/-! ## A296722.P7265320424795547002

`A296725(A056000(n)+15)`
-/

namespace A296722.P7265320424795547002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A056000 n + 15).toNat

end

end A296722.P7265320424795547002

/-! ## A296722.P645172873267774431

`A296725(Δ[A264443(n)])`
-/

namespace A296722.P645172873267774431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (f1 (n + 1) - f1 n).toNat

end

end A296722.P645172873267774431

/-! ## A296722.P4519366229849470347

`A296725(A374005(n+1))`
-/

namespace A296722.P4519366229849470347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A374005 (n + 1)).toNat

end

end A296722.P4519366229849470347

/-!
# A296723: Number of nX6 0..1 arrays with each 1 adjacent to 0, 2 or 4 king-move neighboring 1s.

The programs for A296723, there is no canonical definition to state claims against.
-/

/-! ## A296723.P1164134325224708877

`A296725(eq[7, A131818(n+1)])`
-/

namespace A296723.P1164134325224708877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296723.P1164134325224708877

/-! ## A296723.P13805522370781928761

`A296725(A374007(n+1))`
-/

namespace A296723.P13805522370781928761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A374007 (n + 1)).toNat

end

end A296723.P13805522370781928761

/-! ## A296723.P11825700925450349532

`A296725(A052905(n+3))`
-/

namespace A296723.P11825700925450349532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A052905 (n + 3)).toNat

end

end A296723.P11825700925450349532

/-! ## A296723.P9615147337834641285

`A296725(eq[3, A219347(n)])`
-/

namespace A296723.P9615147337834641285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296723.P9615147337834641285

/-! ## A296723.P15102593431333509217

`A296725(eq[16, A209439(n)])`
-/

namespace A296723.P15102593431333509217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296723.P15102593431333509217

/-!
# A296724: Number of nX7 0..1 arrays with each 1 adjacent to 0, 2 or 4 king-move neighboring 1s.

The programs for A296724, there is no canonical definition to state claims against.
-/

/-! ## A296724.P3279084630781422654

`A296725(eq[8, A131818(n+1)])`
-/

namespace A296724.P3279084630781422654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296724.P3279084630781422654

/-! ## A296724.P15343949088974249056

`A296725(A374008(n+1))`
-/

namespace A296724.P15343949088974249056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A374008 (n + 1)).toNat

end

end A296724.P15343949088974249056

/-! ## A296724.P6502962959360687964

`A296725(A055999(n+4))`
-/

namespace A296724.P6502962959360687964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (A055999 (n + 4)).toNat

end

end A296724.P6502962959360687964

/-! ## A296724.P3561452413366906728

`A296725(eq[4, A219347(n)])`
-/

namespace A296724.P3561452413366906728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296724.P3561452413366906728

/-! ## A296724.P14632319913548478826

`A296725(eq[6, A193592(n)])`
-/

namespace A296724.P14632319913548478826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296724.P14632319913548478826

/-!
# A296726: Expansion of e.g.f. arcsin(x)/(1 - x).

The programs for A296726, there is no canonical definition to state claims against.
-/

/-! ## A296726.P8956630162144166773

`A177145(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A296726.P8956630162144166773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A177145 n + (n : ℤ) * a (n - 1)

end

end A296726.P8956630162144166773

/-! ## A296726.P9759192289510802171

`A071903((n+1)!)-1`
-/

namespace A296726.P9759192289510802171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 (Nat.factorial (n + 1)) - 1

end

end A296726.P9759192289510802171

/-! ## A296726.P5286938733220280231

`∑[A002266(∑[A075225(n)])]`
-/

namespace A296726.P5286938733220280231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296726.P5286938733220280231

/-!
# A296727: Expansion of e.g.f. arcsinh(x)/(1 - x).

The programs for A296727, there is no canonical definition to state claims against.
-/

/-! ## A296727.P9839437498453154286

`A074719(n+1)+A054893(A115086(n))`
-/

namespace A296727.P9839437498453154286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074719 (n + 1) + A054893 (A115086 n).toNat

end

end A296727.P9839437498453154286

/-! ## A296727.P8394840465063009385

`A008616(A061417(n+1)*A152037(n))`
-/

namespace A296727.P8394840465063009385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A061417 (n + 1) * A152037 n).toNat

end

end A296727.P8394840465063009385

/-!
# A296730: Expansion of e.g.f. arctanh(x*cos(x)) (odd powers only).

The programs for A296730, there is no canonical definition to state claims against.
-/

/-! ## A296730.P3892696116430367500

`A003728(Δ[n²])`
-/

namespace A296730.P3892696116430367500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003728 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A296730.P3892696116430367500

/-! ## A296730.P9319662506248031279

`or(1, A003728(A005408(n)))`
-/

namespace A296730.P9319662506248031279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003728 (A005408 n).toNat)

end

end A296730.P9319662506248031279

/-! ## A296730.P1576632382799412895

`A025469(n)+A003728(A005408(n))`
-/

namespace A296730.P1576632382799412895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A003728 (A005408 n).toNat

end

end A296730.P1576632382799412895

/-! ## A296730.P8528897057645960179

`A033999(n)²*A003728(A005408(n))`
-/

namespace A296730.P8528897057645960179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A003728 (A005408 n).toNat

end

end A296730.P8528897057645960179

/-! ## A296730.P16725236301217535410

`A003728(2*n+1)*A327155(A133370(n+1))`
-/

namespace A296730.P16725236301217535410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003728 (2 * n + 1) * A327155 (A133370 (n + 1)).toNat

end

end A296730.P16725236301217535410

/-!
# A296732: Number of n X n 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1's.

The programs for A296732, there is no canonical definition to state claims against.
-/

/-! ## A296732.P7775705930821198261

`A296739(∑[4*n]+1)`
-/

namespace A296732.P7775705930821198261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296732.P7775705930821198261

/-! ## A296732.P15088184158623542675

`record[A003982(n)*A296739(n+1)]`
-/

namespace A296732.P15088184158623542675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296732.P15088184158623542675

/-! ## A296732.P11032903553319686853

`A025793(n)*A296739(A001844(n))`
-/

namespace A296732.P11032903553319686853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 n * A296739 (A001844 n).toNat

end

end A296732.P11032903553319686853

/-! ## A296732.P17832787928153341044

`A043568(n)*A296739(A001844(n))`
-/

namespace A296732.P17832787928153341044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A296739 (A001844 n).toNat

end

end A296732.P17832787928153341044

/-! ## A296732.P12318581004168796155

`A296739(A001844(n))+A008683(12*or(1, n))`
-/

namespace A296732.P12318581004168796155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A001844 n).toNat + A008683 (12 * Nat.lor 1 n)

end

end A296732.P12318581004168796155

/-!
# A296733: Number of n X 2 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1s.

The programs for A296733, there is no canonical definition to state claims against.
-/

/-! ## A296733.P540525812447177025

`A296739(∑[n+1]+2)`
-/

namespace A296733.P540525812447177025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296733.P540525812447177025

/-! ## A296733.P7530460837402435471

`gcd(n, (n+1)²)*A296739(A133263(n+1))`
-/

namespace A296733.P7530460837402435471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n ((n + 1) ^ 2) : ℤ) * A296739 (A133263 (n + 1)).toNat

end

end A296733.P7530460837402435471

/-! ## A296733.P16057757732890231369

`lcm(A033999(n), A296739(A133263(n+1)))`
-/

namespace A296733.P16057757732890231369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296739 (A133263 (n + 1)).toNat)

end

end A296733.P16057757732890231369

/-! ## A296733.P9281248514381244586

`or(A000038(n), A296739(A133263(n+1)))`
-/

namespace A296733.P9281248514381244586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A296739 (A133263 (n + 1)).toNat)

end

end A296733.P9281248514381244586

/-! ## A296733.P12253858202497141347

`A296739(A133263(n+1))%A296720(n+1)`
-/

namespace A296733.P12253858202497141347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296739 (A133263 (n + 1)).toNat) (A296720 (n + 1))

end

end A296733.P12253858202497141347

/-!
# A296734: Number of nX3 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1s.

The programs for A296734, there is no canonical definition to state claims against.
-/

/-! ## A296734.P18167439689693798810

`A296739(∑[n+2]+4)`
-/

namespace A296734.P18167439689693798810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296734.P18167439689693798810

/-! ## A296734.P14725384570267211864

`A296739(A167499(n)+n)+C(n+1, 34)`
-/

namespace A296734.P14725384570267211864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A167499 n + (n : ℤ)).toNat + (Nat.choose (n + 1) 34 : ℤ)

end

end A296734.P14725384570267211864

/-! ## A296734.P3586459953783771963

`A015970(n)*A296739(A167614(n+1))`
-/

namespace A296734.P3586459953783771963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A296739 (A167614 (n + 1)).toNat

end

end A296734.P3586459953783771963

/-! ## A296734.P6986069977628238868

`A000034(2*n)*A296739(A055998(n)+6)`
-/

namespace A296734.P6986069977628238868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A296739 (A055998 n + 6).toNat

end

end A296734.P6986069977628238868

/-! ## A296734.P9746258881910641479

`A296739(A167614(n+1))+A000038(A000032(n))`
-/

namespace A296734.P9746258881910641479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A167614 (n + 1)).toNat + A000038 (A000032 n).toNat

end

end A296734.P9746258881910641479

/-!
# A296735: Number of nX4 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1s.

The programs for A296735, there is no canonical definition to state claims against.
-/

/-! ## A296735.P9056382423548387151

`A296739(A141214(n)+7)`
-/

namespace A296735.P9056382423548387151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A141214 n + 7).toNat

end

end A296735.P9056382423548387151

/-! ## A296735.P13505372768393935416

`A296739(A052905(n)+9)`
-/

namespace A296735.P13505372768393935416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A052905 n + 9).toNat

end

end A296735.P13505372768393935416

/-! ## A296735.P15852014871816614003

`A296739(A055999(n)+10)`
-/

namespace A296735.P15852014871816614003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A055999 n + 10).toNat

end

end A296735.P15852014871816614003

/-! ## A296735.P3424872036997120375

`A296739(A167614(n+2)+1)`
-/

namespace A296735.P3424872036997120375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A167614 (n + 2) + 1).toNat

end

end A296735.P3424872036997120375

/-! ## A296735.P16184873735966444188

`A296739(A374004(n+1))`
-/

namespace A296735.P16184873735966444188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A374004 (n + 1)).toNat

end

end A296735.P16184873735966444188

/-!
# A296736: Number of n X 5 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1's.

The programs for A296736, there is no canonical definition to state claims against.
-/

/-! ## A296736.P9776746797914144112

`A296739(eq[7, A066657(n)])`
-/

namespace A296736.P9776746797914144112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296736.P9776746797914144112

/-! ## A296736.P1675380377799428175

`A296739(eq[6, A131818(n+1)])`
-/

namespace A296736.P1675380377799428175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296736.P1675380377799428175

/-! ## A296736.P13295294307153756225

`A296739(A374005(n+1))`
-/

namespace A296736.P13295294307153756225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A374005 (n + 1)).toNat

end

end A296736.P13295294307153756225

/-! ## A296736.P17073011834181870047

`A296739(A046691(n+3))`
-/

namespace A296736.P17073011834181870047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A046691 (n + 3)).toNat

end

end A296736.P17073011834181870047

/-! ## A296736.P2504748104232100902

`A296739(eq[4, A193592(n)])`
-/

namespace A296736.P2504748104232100902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296736.P2504748104232100902

/-!
# A296737: Number of nX6 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1s.

The programs for A296737, there is no canonical definition to state claims against.
-/

/-! ## A296737.P3444672989730594915

`A296739(A000217(n+5)+6)`
-/

namespace A296737.P3444672989730594915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A000217 (n + 5) + 6).toNat

end

end A296737.P3444672989730594915

/-! ## A296737.P16980195096737186592

`A296739(eq[7, A131818(n+1)])`
-/

namespace A296737.P16980195096737186592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296737.P16980195096737186592

/-! ## A296737.P18192693146623767693

`A296739(A374007(n+1))`
-/

namespace A296737.P18192693146623767693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A374007 (n + 1)).toNat

end

end A296737.P18192693146623767693

/-! ## A296737.P17894528854968433193

`A296739(eq[5, A193592(n)])`
-/

namespace A296737.P17894528854968433193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296737.P17894528854968433193

/-! ## A296737.P16945867893724358362

`A296739(eq[8, A185782(n+1)])`
-/

namespace A296737.P16945867893724358362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296737.P16945867893724358362

/-!
# A296738: Number of n X 7 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1's.

The programs for A296738, there is no canonical definition to state claims against.
-/

/-! ## A296738.P3689926920296244694

`A296739(eq[11, A066657(n)])`
-/

namespace A296738.P3689926920296244694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296738.P3689926920296244694

/-! ## A296738.P17289214764886669678

`A296739(eq[8, A131818(n+1)])`
-/

namespace A296738.P17289214764886669678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296738.P17289214764886669678

/-! ## A296738.P7944606649246718443

`A296739(A374008(n+1))`
-/

namespace A296738.P7944606649246718443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (A374008 (n + 1)).toNat

end

end A296738.P7944606649246718443

/-! ## A296738.P16259431767337341995

`A296739(eq[6, A193592(n)])`
-/

namespace A296738.P16259431767337341995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296738.P16259431767337341995

/-! ## A296738.P8424962069655194085

`A296739(eq[7, A200370(n+1)])`
-/

namespace A296738.P8424962069655194085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296738.P8424962069655194085

/-!
# A296739: T(n,k) = Number of n X k 0..1 arrays with each 1 adjacent to 1, 2 or 4 king-move neighboring 1's.

The programs for A296739, there is no canonical definition to state claims against.
-/

/-! ## A296739.P8868620071857206526

`A295847(n+1)+A094382(A295847(n+1))`
-/

namespace A296739.P8868620071857206526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (n + 1) + A094382 (A295847 (n + 1)).toNat

end

end A296739.P8868620071857206526

/-! ## A296739.P110115627105549402

`A295531(A062003(n)+1)+A007968(A230910(n+1))`
-/

namespace A296739.P110115627105549402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A062003 n + 1).toNat + A007968 (A230910 (n + 1)).toNat

end

end A296739.P110115627105549402

/-! ## A296739.P15550022167262253027

`A118759(A295531(n+1))+A007968(A230910(n+1))`
-/

namespace A296739.P15550022167262253027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A295531 (n + 1)).toNat + A007968 (A230910 (n + 1)).toNat

end

end A296739.P15550022167262253027

/-!
# A296742: Expansion of e.g.f. arcsinh(x*sec(x)) (odd powers only).

The programs for A296742, there is no canonical definition to state claims against.
-/

/-! ## A296742.P16071461757975588851

`A000079(n)*A269254(A336495(n))`
-/

namespace A296742.P16071461757975588851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A269254 (A336495 n).toNat

end

end A296742.P16071461757975588851

/-!
# A296743: Expansion of e.g.f. arctanh(x*sec(x)) (odd powers only).

The programs for A296743, there is no canonical definition to state claims against.
-/

/-! ## A296743.P711040971729290888

`A009442(Δ[n²])`
-/

namespace A296743.P711040971729290888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A296743.P711040971729290888

/-! ## A296743.P16874933428797752250

`A201224(Δ[n²])`
-/

namespace A296743.P16874933428797752250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A296743.P16874933428797752250

/-! ## A296743.P2348978339549655202

`record[A009442(n+1)]`
-/

namespace A296743.P2348978339549655202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296743.P2348978339549655202

/-! ## A296743.P17153428049211127150

`abs(A009442(2*n+1))`
-/

namespace A296743.P17153428049211127150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009442 (2 * n + 1)|

end

end A296743.P17153428049211127150

/-! ## A296743.P17880644622581713738

`or(log2(gcd(2, n)), A201224(2*n+1))`
-/

namespace A296743.P17880644622581713738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))) (A201224 (2 * n + 1))

end

end A296743.P17880644622581713738

/-!
# A296744: Numbers whose base-11 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296744, there is no canonical definition to state claims against.
-/

/-! ## A296744.P2950045252872363453

`A043714(n+1)%A256220(n+4)`
-/

namespace A296744.P2950045252872363453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043714 (n + 1)) (A256220 (n + 4))

end

end A296744.P2950045252872363453

/-! ## A296744.P4336371009119529760

`A043714(n+1)%A006753(A000041(n))`
-/

namespace A296744.P4336371009119529760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043714 (n + 1)) (A006753 (A000041 n).toNat)

end

end A296744.P4336371009119529760

/-! ## A296744.P13630721840650604542

`A130706(A331384(n+1))+A043714(n+1)`
-/

namespace A296744.P13630721840650604542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A331384 (n + 1)).toNat + A043714 (n + 1)

end

end A296744.P13630721840650604542

/-! ## A296744.P7786476668285090093

`A032741(A031934(n+1))*A043714(n+1)`
-/

namespace A296744.P7786476668285090093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A031934 (n + 1)).toNat * A043714 (n + 1)

end

end A296744.P7786476668285090093

/-! ## A296744.P9318894252092653770

`lcm(A043714(n+1), A165031(A156604(n+4)))`
-/

namespace A296744.P9318894252092653770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043714 (n + 1)) (A165031 (A156604 (n + 4)).toNat)

end

end A296744.P9318894252092653770

/-!
# A296745: Numbers whose base-11 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296745, there is no canonical definition to state claims against.
-/

/-! ## A296745.P4234257509787694589

`A195663(C(A297275(n+1), 2))`
-/

namespace A296745.P4234257509787694589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 (Nat.choose (A297275 (n + 1)).toNat 2)

end

end A296745.P4234257509787694589

/-! ## A296745.P15676278176213484625

`lt[n, A003056(C(A056960(n), 2))]`
-/

namespace A296745.P15676278176213484625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A056960 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296745.P15676278176213484625

/-! ## A296745.P11139793901643187273

`A297275(n+1)%A234103(n+1)`
-/

namespace A296745.P11139793901643187273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297275 (n + 1)) (A234103 (n + 1))

end

end A296745.P11139793901643187273

/-! ## A296745.P10640269428535320610

`∩[A023779(n+1), A043645(n+1)]`
-/

namespace A296745.P10640269428535320610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296745.P10640269428535320610

/-! ## A296745.P10423627472642730105

`∩[A130734(n+1), A297275(n+1)]`
-/

namespace A296745.P10423627472642730105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296745.P10423627472642730105

/-!
# A296746: Numbers whose base-11 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296746, there is no canonical definition to state claims against.
-/

/-! ## A296746.P11798747296190967292

`A018851(A297273(n+1)²)`
-/

namespace A296746.P11798747296190967292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A297273 (n + 1) ^ 2).toNat

end

end A296746.P11798747296190967292

/-! ## A296746.P181441677319061774

`A018851(lt[0, A055961(n)]²)`
-/

namespace A296746.P181441677319061774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2)

end

end A296746.P181441677319061774

/-! ## A296746.P3909380234904220007

`A018851(A297273(n+1)^2)`
-/

namespace A296746.P3909380234904220007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A297273 (n + 1) ^ 2).toNat

end

end A296746.P3909380234904220007

/-! ## A296746.P17306491047774352165

`lt[A054990(n+1), A055961(n)]`
-/

namespace A296746.P17306491047774352165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296746.P17306491047774352165

/-! ## A296746.P8378447289518249540

`lt[A054991(n+1), A055961(n)]`
-/

namespace A296746.P8378447289518249540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296746.P8378447289518249540

/-! ## A296746.P10719423238592324247

`lt[A189301(n+1), A055961(n)]`
-/

namespace A296746.P10719423238592324247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296746.P10719423238592324247

/-! ## A296746.P6270904461614790462

`A297273(n+1)%A105705(n)²`
-/

namespace A296746.P6270904461614790462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297273 (n + 1)) (A105705 n ^ 2)

end

end A296746.P6270904461614790462

/-! ## A296746.P17332012802630956920

`lt[A001222(A122075(n)), A055961(n)]`
-/

namespace A296746.P17332012802630956920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A122075 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296746.P17332012802630956920

/-! ## A296746.P840862377100231874

`eq[A064458(n), A190599(n+1)]`
-/

namespace A296746.P840862377100231874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296746.P840862377100231874

/-! ## A296746.P15463836824197475764

`∩[A023792(n+1), A043645(n+1)]`
-/

namespace A296746.P15463836824197475764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296746.P15463836824197475764

/-!
# A296747: Numbers whose base-12 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296747, there is no canonical definition to state claims against.
-/

/-! ## A296747.P5217741278917305145

`A043715(n+1)%A002764(n)`
-/

namespace A296747.P5217741278917305145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043715 (n + 1)) (A002764 n)

end

end A296747.P5217741278917305145

/-! ## A296747.P3008014147987136199

`and(A043715(n+1), A359082(n+1))`
-/

namespace A296747.P3008014147987136199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043715 (n + 1)) (A359082 (n + 1))

end

end A296747.P3008014147987136199

/-! ## A296747.P7110339100168198431

`A127241(A141459(n))+A043715(n+1)`
-/

namespace A296747.P7110339100168198431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127241 (A141459 n).toNat + A043715 (n + 1)

end

end A296747.P7110339100168198431

/-! ## A296747.P2242265701868277087

`A043715(n+1)+A000007(A053818(n+1))`
-/

namespace A296747.P2242265701868277087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043715 (n + 1) + A000007 (A053818 (n + 1)).toNat

end

end A296747.P2242265701868277087

/-! ## A296747.P8317755228217263725

`A043715(n+1)+A000007(A219047(n+1))`
-/

namespace A296747.P8317755228217263725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043715 (n + 1) + A000007 (A219047 (n + 1)).toNat

end

end A296747.P8317755228217263725

/-!
# A296748: Numbers whose base-12 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296748, there is no canonical definition to state claims against.
-/

/-! ## A296748.P5141857911337115841

`A018851(A297278(n+1)²)`
-/

namespace A296748.P5141857911337115841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A297278 (n + 1) ^ 2).toNat

end

end A296748.P5141857911337115841

/-! ## A296748.P16307360047081860617

`A138554(A297278(n+1)²)`
-/

namespace A296748.P16307360047081860617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A297278 (n + 1) ^ 2).toNat

end

end A296748.P16307360047081860617

/-! ## A296748.P16681333344323463048

`A297278(n+1)%A119877(n)²`
-/

namespace A296748.P16681333344323463048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297278 (n + 1)) (A119877 n ^ 2)

end

end A296748.P16681333344323463048

/-! ## A296748.P14273199511142759317

`∩[A023780(n+1), A043651(n+1)]`
-/

namespace A296748.P14273199511142759317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296748.P14273199511142759317

/-! ## A296748.P393066830229074110

`∏{e}[A176983(n+1), #]*A297278(n+1)`
-/

namespace A296748.P393066830229074110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A297278 (n + 1)

end

end A296748.P393066830229074110

/-! ## A296748.P3183619184667147977

`lt[A003056(A000217(n)), A056961(n)]`
-/

namespace A296748.P3183619184667147977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296748.P3183619184667147977

/-! ## A296748.P16016787706006864021

`lt[A298642(n), A298642(A056961(n))]`
-/

namespace A296748.P16016787706006864021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298642 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296748.P16016787706006864021

/-! ## A296748.P6486714187885204622

`lcm(A008683(A306344(n)), A297278(n+1))`
-/

namespace A296748.P6486714187885204622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A306344 n).toNat) (A297278 (n + 1))

end

end A296748.P6486714187885204622

/-!
# A296749: Numbers whose base-12 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296749, there is no canonical definition to state claims against.
-/

/-! ## A296749.P656393784286466403

`lt[A256580(n+1), A055963(n)]`
-/

namespace A296749.P656393784286466403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296749.P656393784286466403

/-! ## A296749.P13593529541336835962

`A297276(n+1)%p?[A195145(n)]`
-/

namespace A296749.P13593529541336835962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297276 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A296749.P13593529541336835962

/-! ## A296749.P3394209319179244167

`lt[A000120(A047140(n)), A055963(n)]`
-/

namespace A296749.P3394209319179244167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A047140 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296749.P3394209319179244167

/-! ## A296749.P3793880931114320222

`lt[A043529(A048315(n)), A055963(n)]`
-/

namespace A296749.P3793880931114320222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A048315 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296749.P3793880931114320222

/-! ## A296749.P1154303547694710442

`lt[A071032(A025747(n)), A055963(n)]`
-/

namespace A296749.P1154303547694710442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (A025747 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296749.P1154303547694710442

/-! ## A296749.P16374769555949765513

`A001222(A087731(n))*A297276(n+1)`
-/

namespace A296749.P16374769555949765513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087731 n).toNat * A297276 (n + 1)

end

end A296749.P16374769555949765513

/-! ## A296749.P10923274640303545311

`A001222(A087731(xor(1, n)))+A297276(n+1)-1`
-/

namespace A296749.P10923274640303545311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087731 (Nat.xor 1 n)).toNat + (A297276 (n + 1) - 1)

end

end A296749.P10923274640303545311

/-! ## A296749.P16730902960182225259

`∩[A023793(n+1), A043651(n+1)]`
-/

namespace A296749.P16730902960182225259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296749.P16730902960182225259

/-!
# A296750: Numbers whose base-13 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296750, there is no canonical definition to state claims against.
-/

/-! ## A296750.P5809292238258375337

`A043716(n+1)%A135454(n+4)`
-/

namespace A296750.P5809292238258375337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043716 (n + 1)) (A135454 (n + 4))

end

end A296750.P5809292238258375337

/-! ## A296750.P16485522283939931571

`A001511(A374985(n))*A043716(n+1)`
-/

namespace A296750.P16485522283939931571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A374985 n).toNat * A043716 (n + 1)

end

end A296750.P16485522283939931571

/-! ## A296750.P70529149774208691

`A043716(n+1)%A058332(A007318(n))`
-/

namespace A296750.P70529149774208691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043716 (n + 1)) (A058332 (A007318 n).toNat)

end

end A296750.P70529149774208691

/-! ## A296750.P11749575344496164893

`A080995(A115687(n+1))+A043716(n+1)`
-/

namespace A296750.P11749575344496164893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A115687 (n + 1)).toNat + A043716 (n + 1)

end

end A296750.P11749575344496164893

/-! ## A296750.P12417210131623622385

`A043716(n+1)+A000122(A297407(n+1))`
-/

namespace A296750.P12417210131623622385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043716 (n + 1) + A000122 (A297407 (n + 1)).toNat

end

end A296750.P12417210131623622385

/-!
# A296751: Numbers whose base-13 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296751, there is no canonical definition to state claims against.
-/

/-! ## A296751.P1033118842296097519

`A297281(n+1)+A115011(n)%2`
-/

namespace A296751.P1033118842296097519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (n + 1) + Int.tmod (A115011 n) 2

end

end A296751.P1033118842296097519

/-! ## A296751.P18233335308793046208

`∩[A023781(n+1), A043657(n+1)]`
-/

namespace A296751.P18233335308793046208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296751.P18233335308793046208

/-! ## A296751.P1777506095547108975

`A297281(n+1)+C(n, A186989(3*n+4))`
-/

namespace A296751.P1777506095547108975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (n + 1) + (Nat.choose n (A186989 (3 * n + 4)).toNat : ℤ)

end

end A296751.P1777506095547108975

/-! ## A296751.P597521697604780290

`A297281(n+1)+A000007(A024993(n))`
-/

namespace A296751.P597521697604780290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (n + 1) + A000007 (A024993 n).toNat

end

end A296751.P597521697604780290

/-! ## A296751.P15129746521368586253

`A297281(n+1)+A000035(A115011(n))`
-/

namespace A296751.P15129746521368586253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (n + 1) + A000035 (A115011 n).toNat

end

end A296751.P15129746521368586253

/-! ## A296751.P710597596820163825

`A001222(A163466(n))*A297281(n+1)`
-/

namespace A296751.P710597596820163825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A163466 n).toNat * A297281 (n + 1)

end

end A296751.P710597596820163825

/-! ## A296751.P14002340170757343665

`A332671(A267584(n))+A297281(n+1)`
-/

namespace A296751.P14002340170757343665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A267584 n).toNat + A297281 (n + 1)

end

end A296751.P14002340170757343665

/-! ## A296751.P5654122154387007042

`A297281(n+1)+A000007(A297281(n+1)²)`
-/

namespace A296751.P5654122154387007042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (n + 1) + A000007 (A297281 (n + 1) ^ 2).toNat

end

end A296751.P5654122154387007042

/-!
# A296752: Numbers whose base-13 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296752, there is no canonical definition to state claims against.
-/

/-! ## A296752.P3894516666966473819

`A297279(n+1)+A000007(A214322(n))`
-/

namespace A296752.P3894516666966473819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297279 (n + 1) + A000007 (A214322 n).toNat

end

end A296752.P3894516666966473819

/-! ## A296752.P12269881282444423386

`A297279(n+1)+A000007(A273392(n))`
-/

namespace A296752.P12269881282444423386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297279 (n + 1) + A000007 (A273392 n).toNat

end

end A296752.P12269881282444423386

/-! ## A296752.P515447719925443383

`A297279(n+1)^A007318(A117980(n))`
-/

namespace A296752.P515447719925443383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297279 (n + 1) : ℚ) ^ (A007318 (A117980 n).toNat : ℤ)

end

end A296752.P515447719925443383

/-! ## A296752.P2709553359718860545

`A297279(n+1)^A007318(A038500(n+1))`
-/

namespace A296752.P2709553359718860545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297279 (n + 1) : ℚ) ^ (A007318 (A038500 (n + 1)).toNat : ℤ)

end

end A296752.P2709553359718860545

/-! ## A296752.P2161173056819009898

`A297279(n+1)%A343971(A057919(n+4))`
-/

namespace A296752.P2161173056819009898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297279 (n + 1)) (A343971 (A057919 (n + 4)).toNat)

end

end A296752.P2161173056819009898

/-! ## A296752.P2964512095977147314

`∩[A023794(n+1), A043657(n+1)]`
-/

namespace A296752.P2964512095977147314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296752.P2964512095977147314

/-! ## A296752.P11274314685244493168

`A297279(n+1)%A002189(n)`
-/

namespace A296752.P11274314685244493168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297279 (n + 1)) (A002189 n)

end

end A296752.P11274314685244493168

/-! ## A296752.P2025538019319433850

`A297279(n+1)+A117980(A007318(n)²)`
-/

namespace A296752.P2025538019319433850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297279 (n + 1) + A117980 (A007318 n ^ 2).toNat

end

end A296752.P2025538019319433850

/-!
# A296753: Numbers whose base-14 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296753, there is no canonical definition to state claims against.
-/

/-! ## A296753.P15950947772284619598

`A043717(n+1)%A090782(n+1)`
-/

namespace A296753.P15950947772284619598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043717 (n + 1)) (A090782 (n + 1))

end

end A296753.P15950947772284619598

/-! ## A296753.P9266302304645548842

`A043717(n+1)%A167846(A008279(n))`
-/

namespace A296753.P9266302304645548842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043717 (n + 1)) (A167846 (A008279 n).toNat)

end

end A296753.P9266302304645548842

/-! ## A296753.P5484886134793582985

`lcm(A043717(n+1), A165022(A104516(n)))`
-/

namespace A296753.P5484886134793582985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043717 (n + 1)) (A165022 (A104516 n).toNat)

end

end A296753.P5484886134793582985

/-! ## A296753.P12802215271610054314

`A132774(A092230(n+1))+A043717(n+1)`
-/

namespace A296753.P12802215271610054314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132774 (A092230 (n + 1)).toNat + A043717 (n + 1)

end

end A296753.P12802215271610054314

/-! ## A296753.P5303956300715502435

`A043717(n+1)+A016035(A213891(n+1))`
-/

namespace A296753.P5303956300715502435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043717 (n + 1) + A016035 (A213891 (n + 1)).toNat

end

end A296753.P5303956300715502435

/-!
# A296754: Numbers whose base-14 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296754, there is no canonical definition to state claims against.
-/

/-! ## A296754.P484680106912956225

`A297284(n+1)%p?[A195143(n)]`
-/

namespace A296754.P484680106912956225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297284 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A296754.P484680106912956225

/-! ## A296754.P5148060312612703518

`∩[A023782(n+1), A043663(n+1)]`
-/

namespace A296754.P5148060312612703518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296754.P5148060312612703518

/-! ## A296754.P13413532928269281685

`lt[14, A044916(n+1)-A043319(n+1)]`
-/

namespace A296754.P13413532928269281685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044916 (n + 1) - A043319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296754.P13413532928269281685

/-! ## A296754.P5677380263250681186

`A016727(2^(comp[∑[n]]-n))*A297284(n+1)`
-/

namespace A296754.P5677380263250681186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat * A297284 (n + 1)

end

end A296754.P5677380263250681186

/-! ## A296754.P7882863144922832508

`A297284(n+1)+A000007(A064645(n))`
-/

namespace A296754.P7882863144922832508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297284 (n + 1) + A000007 (A064645 n).toNat

end

end A296754.P7882863144922832508

/-! ## A296754.P5734265232701363036

`A297284(n+1)+A000007(A273914(n))`
-/

namespace A296754.P5734265232701363036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297284 (n + 1) + A000007 (A273914 n).toNat

end

end A296754.P5734265232701363036

/-! ## A296754.P18300838460924963094

`A297284(n+1)%A002189(n)`
-/

namespace A296754.P18300838460924963094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297284 (n + 1)) (A002189 n)

end

end A296754.P18300838460924963094

/-! ## A296754.P14057696204316031537

`A297284(n+1)+A000007(A216274(n)²)`
-/

namespace A296754.P14057696204316031537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297284 (n + 1) + A000007 (A216274 n ^ 2).toNat

end

end A296754.P14057696204316031537

/-! ## A296754.P5694302420610067114

`A297284(n+1)+A000007(A297284(n+1)²)`
-/

namespace A296754.P5694302420610067114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297284 (n + 1) + A000007 (A297284 (n + 1) ^ 2).toNat

end

end A296754.P5694302420610067114

/-!
# A296755: Numbers whose base-14 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296755, there is no canonical definition to state claims against.
-/

/-! ## A296755.P6911313110496256798

`A297282(n+1)%A225088(n+8)`
-/

namespace A296755.P6911313110496256798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297282 (n + 1)) (A225088 (n + 8))

end

end A296755.P6911313110496256798

/-! ## A296755.P14495305129729130099

`A297282(n+1)+char[2]*A151933(n)`
-/

namespace A296755.P14495305129729130099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297282 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A151933 n

end

end A296755.P14495305129729130099

/-! ## A296755.P3204853039162898064

`A297282(n+1)+A000007(A054257(n))`
-/

namespace A296755.P3204853039162898064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297282 (n + 1) + A000007 (A054257 n).toNat

end

end A296755.P3204853039162898064

/-! ## A296755.P10463849320340135238

`A297282(n+1)%A001546(A170893(n))`
-/

namespace A296755.P10463849320340135238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297282 (n + 1)) (A001546 (A170893 n).toNat)

end

end A296755.P10463849320340135238

/-! ## A296755.P2727574865155798757

`A297282(n+1)+A000038(A255554(n+1))`
-/

namespace A296755.P2727574865155798757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297282 (n + 1) + A000038 (A255554 (n + 1)).toNat

end

end A296755.P2727574865155798757

/-! ## A296755.P145858634915984497

`A057427(A072777(n+1))*A297282(n+1)`
-/

namespace A296755.P145858634915984497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A072777 (n + 1)).toNat * A297282 (n + 1)

end

end A296755.P145858634915984497

/-! ## A296755.P14868149256684507857

`A001222(A187128(n+1))*A297282(n+1)`
-/

namespace A296755.P14868149256684507857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A187128 (n + 1)).toNat * A297282 (n + 1)

end

end A296755.P14868149256684507857

/-! ## A296755.P12777737046860449360

`or(A002483(A054784(n+1)), A297282(n+1))`
-/

namespace A296755.P12777737046860449360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002483 (A054784 (n + 1)).toNat) (A297282 (n + 1))

end

end A296755.P12777737046860449360

/-! ## A296755.P2113552431897523771

`A000001(A179335(A008458(n)))*A297282(n+1)`
-/

namespace A296755.P2113552431897523771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A179335 (A008458 n).toNat).toNat * A297282 (n + 1)

end

end A296755.P2113552431897523771

/-! ## A296755.P14623242442103043359

`∩[A023795(n+1), A043663(n+1)]`
-/

namespace A296755.P14623242442103043359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296755.P14623242442103043359

/-!
# A296757: Numbers whose base-15 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296757, there is no canonical definition to state claims against.
-/

/-! ## A296757.P15350275761877654787

`A297287(A151878(n)!+n)`
-/

namespace A296757.P15350275761877654787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297287 (Nat.factorial (A151878 n).toNat + n)

end

end A296757.P15350275761877654787

/-! ## A296757.P12397784502569268771

`A297287(A293024(∑[n])+n)`
-/

namespace A296757.P12397784502569268771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297287 (A293024 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A296757.P12397784502569268771

/-! ## A296757.P3310130209735070529

`A297287(n+1)%A099632(n+1)`
-/

namespace A296757.P3310130209735070529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297287 (n + 1)) (A099632 (n + 1))

end

end A296757.P3310130209735070529

/-! ## A296757.P10697237671636169637

`∩[A023783(n+1), A043669(n+1)]`
-/

namespace A296757.P10697237671636169637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296757.P10697237671636169637

/-! ## A296757.P17913829047884638005

`comp[A023770(n+1)]%A099632(n+1)`
-/

namespace A296757.P17913829047884638005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A099632 (n + 1))

end

end A296757.P17913829047884638005

/-! ## A296757.P14133481448665244092

`A297287(n+1)+A000007(A104709(n))`
-/

namespace A296757.P14133481448665244092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297287 (n + 1) + A000007 (A104709 n).toNat

end

end A296757.P14133481448665244092

/-! ## A296757.P6215451580535489263

`A297287(n+1)+A000007(A130330(n))`
-/

namespace A296757.P6215451580535489263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297287 (n + 1) + A000007 (A130330 n).toNat

end

end A296757.P6215451580535489263

/-! ## A296757.P11056658788902550368

`A297287(n+1)+A000007(A140513(n))`
-/

namespace A296757.P11056658788902550368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297287 (n + 1) + A000007 (A140513 n).toNat

end

end A296757.P11056658788902550368

/-! ## A296757.P13360170327910772493

`A297287(n+1)%A204617(A204586(n))`
-/

namespace A296757.P13360170327910772493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297287 (n + 1)) (A204617 (A204586 n).toNat)

end

end A296757.P13360170327910772493

/-! ## A296757.P13109350685749772810

`A297287(n+1)+A000007(A297287(n+1)²)`
-/

namespace A296757.P13109350685749772810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297287 (n + 1) + A000007 (A297287 (n + 1) ^ 2).toNat

end

end A296757.P13109350685749772810

/-!
# A296758: Numbers whose base-15 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296758, there is no canonical definition to state claims against.
-/

/-! ## A296758.P9389571284955043342

`∩[A023796(n+1), A043669(n+1)]`
-/

namespace A296758.P9389571284955043342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296758.P9389571284955043342

/-!
# A296759: Numbers whose base-16 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296759, there is no canonical definition to state claims against.
-/

/-! ## A296759.P9178122081842776833

`A043719(n+1)%A272684(n+1)`
-/

namespace A296759.P9178122081842776833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043719 (n + 1)) (A272684 (n + 1))

end

end A296759.P9178122081842776833

/-! ## A296759.P10614572340701922574

`record[(n+1)*A043568(n+1)%2]%A272684(n+1)`
-/

namespace A296759.P10614572340701922574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A043568 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A272684 (n + 1))

end

end A296759.P10614572340701922574

/-! ## A296759.P4603707134706887779

`A043719(n+1)%A048128(A098859(n))`
-/

namespace A296759.P4603707134706887779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043719 (n + 1)) (A048128 (A098859 n).toNat)

end

end A296759.P4603707134706887779

/-! ## A296759.P11198574991482950940

`A043719(n+1)+A010815(A129864(n+1))`
-/

namespace A296759.P11198574991482950940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043719 (n + 1) + A010815 (A129864 (n + 1)).toNat

end

end A296759.P11198574991482950940

/-! ## A296759.P2716811339808442745

`A122840(A051129(n+1))+A043719(n+1)`
-/

namespace A296759.P2716811339808442745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A051129 (n + 1)).toNat + A043719 (n + 1)

end

end A296759.P2716811339808442745

/-!
# A296760: Numbers whose base-16 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296760, there is no canonical definition to state claims against.
-/

/-! ## A296760.P15651086580401003706

`lt[2*n, A055964(n)%or(2, floor(ϕ^(2*n))+1)]`
-/

namespace A296760.P15651086580401003706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055964 n) (Int.lor 2 (⌊Real.goldenRatio ^ (2 * n)⌋ + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296760.P15651086580401003706

/-! ## A296760.P14123228304852384145

`A056926(A297290(n+1)²)`
-/

namespace A296760.P14123228304852384145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A297290 (n + 1) ^ 2).toNat

end

end A296760.P14123228304852384145

/-! ## A296760.P235725557167446763

`A262689(A297290(n+1)²)`
-/

namespace A296760.P235725557167446763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A297290 (n + 1) ^ 2).toNat

end

end A296760.P235725557167446763

/-! ## A296760.P7887625214244337397

`A056926(lt[A055965(n), 0]²)`
-/

namespace A296760.P7887625214244337397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2)

end

end A296760.P7887625214244337397

/-! ## A296760.P3213537491739579884

`A262689(lt[A055965(n), 0]²)`
-/

namespace A296760.P3213537491739579884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2)

end

end A296760.P3213537491739579884

/-! ## A296760.P8306065379129058234

`A056926(lt[n, A056962(n)]²)`
-/

namespace A296760.P8306065379129058234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2)

end

end A296760.P8306065379129058234

/-! ## A296760.P1231125343692380649

`∩[A023784(n+1), A043675(n+1)]`
-/

namespace A296760.P1231125343692380649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296760.P1231125343692380649

/-! ## A296760.P18079638018847362796

`A297290(n+1)+A029833(A005897(n))`
-/

namespace A296760.P18079638018847362796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297290 (n + 1) + A029833 (A005897 n).toNat

end

end A296760.P18079638018847362796

/-! ## A296760.P2497275151037821159

`A000120(A130321(n))*A297290(n+1)`
-/

namespace A296760.P2497275151037821159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A130321 n).toNat * A297290 (n + 1)

end

end A296760.P2497275151037821159

/-! ## A296760.P11703197590526368464

`A000120(A137688(n))*A297290(n+1)`
-/

namespace A296760.P11703197590526368464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A137688 n).toNat * A297290 (n + 1)

end

end A296760.P11703197590526368464

/-! ## A296760.P8289636448059681430

`A297290(n+1)+A005089(Δ[A007664(n)])`
-/

namespace A296760.P8289636448059681430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297290 (n + 1) + A005089 (f1 (n + 1) - f1 n).toNat

end

end A296760.P8289636448059681430

/-! ## A296760.P6692020703416367825

`A297290(n+1)^A007913(∑[A103863(n+1)]²)`
-/

namespace A296760.P6692020703416367825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297290 (n + 1) : ℚ) ^ (A007913 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat : ℤ)

end

end A296760.P6692020703416367825

/-! ## A296760.P7359706505546089417

`A297290(n+1)*A297330(eq[1, A297330(n+1)]+1)`
-/

namespace A296760.P7359706505546089417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297290 (n + 1) * A297330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A296760.P7359706505546089417

/-! ## A296760.P9977847036784902568

`A297290(n+1)+A091231(A089339(A089339(n+1)+1))`
-/

namespace A296760.P9977847036784902568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297290 (n + 1) + A091231 (A089339 (A089339 (n + 1) + 1).toNat).toNat

end

end A296760.P9977847036784902568

/-!
# A296761: Numbers whose base-16 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296761, there is no canonical definition to state claims against.
-/

/-! ## A296761.P13892392851383836016

`lt[sqrt(A200370(n+4)), A055965(n)]`
-/

namespace A296761.P13892392851383836016
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A200370 (n + 4) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A296761.P13892392851383836016

/-! ## A296761.P3203441613198423827

`lt[A151909(floor(n/3)), A055965(n)]`
-/

namespace A296761.P3203441613198423827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 ⌊(n : ℚ) / 3⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296761.P3203441613198423827

/-! ## A296761.P974261171532157693

`lt[A000007(A029155(n)), A055965(n)]`
-/

namespace A296761.P974261171532157693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A029155 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296761.P974261171532157693

/-! ## A296761.P2775903304767760872

`lt[A010894(A289813(n)), A055965(n)]`
-/

namespace A296761.P2775903304767760872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A289813 n).toNat + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296761.P2775903304767760872

/-! ## A296761.P4469604270479236730

`∩[A023797(n+1), A043675(n+1)]`
-/

namespace A296761.P4469604270479236730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296761.P4469604270479236730

/-!
# A296762: Numbers whose base-20 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296762, there is no canonical definition to state claims against.
-/

/-! ## A296762.P8224302955606186352

`eq[A005369(A124589(n+1)), A055967(n)]`
-/

namespace A296762.P8224302955606186352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A124589 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296762.P8224302955606186352

/-! ## A296762.P7545313355744925309

`record[gcd(A008603(n+1), A110303(n+1))]`
-/

namespace A296762.P7545313355744925309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008603 (n + 1)) (A110303 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296762.P7545313355744925309

/-! ## A296762.P9093537195277822018

`lt[(A038644(n+1)*A055967(n))², n]`
-/

namespace A296762.P9093537195277822018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038644 (n + 1) * A055967 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A296762.P9093537195277822018

/-! ## A296762.P12016182159519440403

`eq[A003982(A000096(n)), A055967(n)]`
-/

namespace A296762.P12016182159519440403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A000096 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296762.P12016182159519440403

/-! ## A296762.P18042685140837019070

`eq[A055967(n), A154269(A047838(n+2))]`
-/

namespace A296762.P18042685140837019070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A047838 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296762.P18042685140837019070

/-!
# A296763: Numbers whose base-20 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296763, there is no canonical definition to state claims against.
-/

/-! ## A296763.P4636385646531583903

`lt[A055967(n), A000038(A029134(n))]`
-/

namespace A296763.P4636385646531583903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029134 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P4636385646531583903

/-! ## A296763.P3837467270905335370

`lt[A051424(n), A051424(A056963(n))]`
-/

namespace A296763.P3837467270905335370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 (A056963 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P3837467270905335370

/-! ## A296763.P2978410802605193912

`lt[A070211(n), A070211(A056963(n))]`
-/

namespace A296763.P2978410802605193912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070211 (A056963 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P2978410802605193912

/-! ## A296763.P13508863897409865895

`lt[A108917(n), A108917(A056963(n))]`
-/

namespace A296763.P13508863897409865895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (A056963 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P13508863897409865895

/-! ## A296763.P17838156413429887637

`lt[A327516(n), A327516(A056963(n))]`
-/

namespace A296763.P17838156413429887637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 (A056963 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P17838156413429887637

/-! ## A296763.P10636633328884712818

`lt[A055967(n), A000038(A002977(3*(n+1)))]`
-/

namespace A296763.P10636633328884712818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002977 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P10636633328884712818

/-! ## A296763.P3042148629641934860

`lt[A055967(n), A154269(A167499(n))]`
-/

namespace A296763.P3042148629641934860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A167499 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P3042148629641934860

/-! ## A296763.P11930434635659102219

`lt[A055967(n), A000007(A043931(n+1))]`
-/

namespace A296763.P11930434635659102219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A043931 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P11930434635659102219

/-! ## A296763.P15977072423843590058

`lt[A055967(n), A000007(A044822(n+1))]`
-/

namespace A296763.P15977072423843590058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A044822 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P15977072423843590058

/-! ## A296763.P14984776209906912521

`lt[A055967(n), A003982(A179865(n+1))]`
-/

namespace A296763.P14984776209906912521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P14984776209906912521

/-! ## A296763.P3028732612872334735

`lt[A055967(n), A003982(A047838(n+2))]`
-/

namespace A296763.P3028732612872334735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A047838 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P3028732612872334735

/-! ## A296763.P16216114931818870760

`lt[A055967(n), A000038(A002473(n+1))]`
-/

namespace A296763.P16216114931818870760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P16216114931818870760

/-! ## A296763.P8675483357168461292

`lt[A055967(n), A000038(A045111(n+1))]`
-/

namespace A296763.P8675483357168461292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A045111 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P8675483357168461292

/-! ## A296763.P6860897776780082318

`lt[A055967(n), A000038(A169718(n))]`
-/

namespace A296763.P6860897776780082318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A169718 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P6860897776780082318

/-! ## A296763.P16334658637034562176

`lt[A055967(n), A057428(A274606(n+1))]`
-/

namespace A296763.P16334658637034562176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A274606 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296763.P16334658637034562176

/-!
# A296764: Numbers whose base-20 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296764, there is no canonical definition to state claims against.
-/

/-! ## A296764.P8401279407509511599

`lt[log2(A074346(n+1)), A055967(n)+1]`
-/

namespace A296764.P8401279407509511599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A074346 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A296764.P8401279407509511599

/-! ## A296764.P13493818123193297697

`lt[log2(A098832(3*n+2)), A055967(n)]`
-/

namespace A296764.P13493818123193297697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A098832 (3 * n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A296764.P13493818123193297697

/-! ## A296764.P7626314094256564858

`lt[A000122(A008605(n)), A055967(n)]`
-/

namespace A296764.P7626314094256564858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A008605 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P7626314094256564858

/-! ## A296764.P1922331045546627121

`lt[A000038(A057946(n)), A055967(n)]`
-/

namespace A296764.P1922331045546627121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A057946 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P1922331045546627121

/-! ## A296764.P13361035343921416466

`lt[A010146(A002473(n+1)), A055967(n)]`
-/

namespace A296764.P13361035343921416466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (A002473 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P13361035343921416466

/-! ## A296764.P4533768861236110417

`lt[A024155(A057946(n)+1), A055967(n)]`
-/

namespace A296764.P4533768861236110417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A057946 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P4533768861236110417

/-! ## A296764.P16123239881416500403

`lt[A071032(A044822(n+1)), A055967(n)]`
-/

namespace A296764.P16123239881416500403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (A044822 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P16123239881416500403

/-! ## A296764.P6942800675314946765

`lt[A073424(A043931(n+1)), A055967(n)]`
-/

namespace A296764.P6942800675314946765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A043931 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P6942800675314946765

/-! ## A296764.P6397146118060217755

`lt[A073424(A045111(n+1)), A055967(n)]`
-/

namespace A296764.P6397146118060217755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A045111 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P6397146118060217755

/-! ## A296764.P7127235132711370426

`lt[A319572(A289508(n+1)), A055967(n)]`
-/

namespace A296764.P7127235132711370426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319572 (A289508 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P7127235132711370426

/-! ## A296764.P1626971838542087423

`lt[A000030(A337582(2*n+3)), A055967(n)]`
-/

namespace A296764.P1626971838542087423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A337582 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P1626971838542087423

/-! ## A296764.P258930752909882678

`lt[A002505(A056963(n)), A002505(n)]`
-/

namespace A296764.P258930752909882678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002505 (A056963 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P258930752909882678

/-! ## A296764.P13821960395535331809

`lt[A000007(A055671(n)), A055967(n)]`
-/

namespace A296764.P13821960395535331809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A055671 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P13821960395535331809

/-! ## A296764.P17346720453514696985

`lt[A311257(A056963(n)), A311257(n)]`
-/

namespace A296764.P17346720453514696985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 (A056963 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P17346720453514696985

/-! ## A296764.P8970727601574430280

`lt[A000007(A124589(n+1)), A055967(n)]`
-/

namespace A296764.P8970727601574430280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A124589 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P8970727601574430280

/-! ## A296764.P6215072430177632180

`lt[atan(A038644(n+1)), A055967(n)]`
-/

namespace A296764.P6215072430177632180
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A038644 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A296764.P6215072430177632180

/-! ## A296764.P5002419938574277165

`lt[A055980(27*n+11), A055967(n)]`
-/

namespace A296764.P5002419938574277165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (27 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P5002419938574277165

/-! ## A296764.P13499691931214635502

`lt[A020639(A002473(2*n+3)), A055967(n)]`
-/

namespace A296764.P13499691931214635502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002473 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296764.P13499691931214635502

/-!
# A296765: Numbers whose base-60 digits d(m), d(m-1), ..., d(0) have #(rises) = #(falls); see Comments.

The programs for A296765, there is no canonical definition to state claims against.
-/

/-! ## A296765.P17900105168323743379

`A262065(A195663(∑[n+1]))`
-/

namespace A296765.P17900105168323743379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (A195663 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A296765.P17900105168323743379

/-! ## A296765.P6915065915189805467

`A262065(n+2)+A000007(A059268(n))`
-/

namespace A296765.P6915065915189805467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A000007 (A059268 n).toNat

end

end A296765.P6915065915189805467

/-! ## A296765.P10023159975138778535

`A262065(n+2)+A000007(A271598(n))`
-/

namespace A296765.P10023159975138778535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A000007 (A271598 n).toNat

end

end A296765.P10023159975138778535

/-! ## A296765.P13398146013725992028

`A262065(n+2)+A000007(A125518(n+1))`
-/

namespace A296765.P13398146013725992028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A000007 (A125518 (n + 1)).toNat

end

end A296765.P13398146013725992028

/-! ## A296765.P3456102328740031292

`A262065(n+2)+A000038(A328572(n))`
-/

namespace A296765.P3456102328740031292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A000038 (A328572 n).toNat

end

end A296765.P3456102328740031292

/-! ## A296765.P11604013224156771554

`A262065(n+2)+A007814(A180555(n+1))`
-/

namespace A296765.P11604013224156771554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A007814 (A180555 (n + 1)).toNat

end

end A296765.P11604013224156771554

/-! ## A296765.P14737443567348485101

`A262065(n+2)+A000038(A188440(n))`
-/

namespace A296765.P14737443567348485101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A000038 (A188440 n).toNat

end

end A296765.P14737443567348485101

/-! ## A296765.P6113377824647237004

`A262065(n+2)+A010051(A013935(n+1))`
-/

namespace A296765.P6113377824647237004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A010051 (A013935 (n + 1)).toNat

end

end A296765.P6113377824647237004

/-! ## A296765.P15373361754620864792

`A001511(A034965(n+1))*A262065(n+2)`
-/

namespace A296765.P15373361754620864792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A034965 (n + 1)).toNat * A262065 (n + 2)

end

end A296765.P15373361754620864792

/-! ## A296765.P3328806945519007399

`A262065(n+2)+A000038(A293551(n))`
-/

namespace A296765.P3328806945519007399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A000038 (A293551 n).toNat

end

end A296765.P3328806945519007399

/-! ## A296765.P17836927878705326464

`A001222(A002385(n+1))*A262065(n+2)`
-/

namespace A296765.P17836927878705326464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002385 (n + 1)).toNat * A262065 (n + 2)

end

end A296765.P17836927878705326464

/-! ## A296765.P12445021072500949207

`A262065(n+2)+A005369(A262065(2*(n+1)))`
-/

namespace A296765.P12445021072500949207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 2) + A005369 (A262065 (2 * (n + 1))).toNat

end

end A296765.P12445021072500949207

/-! ## A296765.P8987486089283218666

`A262065(n+2)^A001222(A002385(n+2))`
-/

namespace A296765.P8987486089283218666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262065 (n + 2) : ℚ) ^ (A001222 (A002385 (n + 2)).toNat : ℤ)

end

end A296765.P8987486089283218666

/-! ## A296765.P2322955401974148227

`A262065(n+2)^A094497(A094497(n))`
-/

namespace A296765.P2322955401974148227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262065 (n + 2) : ℚ) ^ (A094497 (A094497 n).toNat : ℤ)

end

end A296765.P2322955401974148227

/-! ## A296765.P669873230268754752

`and(A008683(A002385(n+3)), A262065(n+2))`
-/

namespace A296765.P669873230268754752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A002385 (n + 3)).toNat) (A262065 (n + 2))

end

end A296765.P669873230268754752

/-!
# A296766: Numbers whose base-60 digits d(m), d(m-1), ..., d(0) have #(rises) > #(falls); see Comments.

The programs for A296766, there is no canonical definition to state claims against.
-/

/-! ## A296766.P9452920157861564149

`A040930(Δ[n^3])+n`
-/

namespace A296766.P9452920157861564149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A296766.P9452920157861564149

/-! ## A296766.P2056227185119774599

`A335246(n+1)%2+n+62`
-/

namespace A296766.P2056227185119774599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335246 (n + 1)) 2 + (n + 62 : ℤ)

end

end A296766.P2056227185119774599

/-! ## A296766.P17482082106999904185

`57*A131713(3*n²)+n+5`
-/

namespace A296766.P17482082106999904185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  57 * A131713 (3 * n ^ 2) + (n + 5 : ℤ)

end

end A296766.P17482082106999904185

/-! ## A296766.P6548255275804162554

`a(floor(1/A086378(n+1)))+n` with `a(0)=62`
-/

namespace A296766.P6548255275804162554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [62] fun n a =>
  a ⌊1 / (A086378 (n + 1) : ℚ)⌋.toNat + n

end

end A296766.P6548255275804162554

/-! ## A296766.P557943188960275341

`A011655(Δ[n^3])+a(n-1)` with `a(0)=62`
-/

namespace A296766.P557943188960275341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [62] fun n a =>
  A011655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + a (n - 1)

end

end A296766.P557943188960275341

/-! ## A296766.P2655531261931664038

`A116619(A137700(n))+61`
-/

namespace A296766.P2655531261931664038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (A137700 n).toNat + 61

end

end A296766.P2655531261931664038

/-! ## A296766.P5780852318222919757

`A304492(A007916(n+2))+59`
-/

namespace A296766.P5780852318222919757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304492 (A007916 (n + 2)).toNat + 59

end

end A296766.P5780852318222919757

/-! ## A296766.P8510756925362880449

`A089120(A248549(n+1))+1+n`
-/

namespace A296766.P8510756925362880449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A248549 (n + 1)).toNat + 1 + (n : ℤ)

end

end A296766.P8510756925362880449

/-! ## A296766.P3808141649292568909

`A327374(A020719(n))`
-/

namespace A296766.P3808141649292568909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327374 (A020719 n).toNat

end

end A296766.P3808141649292568909

/-!
# A296767: Numbers whose base-60 digits d(m), d(m-1), ..., d(0) have #(rises) < #(falls); see Comments.

The programs for A296767, there is no canonical definition to state claims against.
-/

/-! ## A296767.P14783720313866103133

`A102493(A084854(n+1)%A242385(n+1))`
-/

namespace A296767.P14783720313866103133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102493 (Int.tmod (A084854 (n + 1)) (A242385 (n + 1))).toNat

end

end A296767.P14783720313866103133

/-! ## A296767.P14178883678746798490

`A102493(A084854(n+1))%A013935(A013935(n+1))`
-/

namespace A296767.P14178883678746798490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102493 (A084854 (n + 1)).toNat) (A013935 (A013935 (n + 1)).toNat)

end

end A296767.P14178883678746798490

/-! ## A296767.P17394377880816982306

`A184945(A184945(n))+A102493(A084854(n+1))`
-/

namespace A296767.P17394377880816982306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A184945 n).toNat + A102493 (A084854 (n + 1)).toNat

end

end A296767.P17394377880816982306

/-!
# A296768: Initially let b(i)=i for all i > 0. On the k-th pass, exchange b(k+1) with b(b(k+1) + b(k)). The sequence is the limit of these sequences as k goes to infinity.

The programs for A296768, there is no canonical definition to state claims against.
-/

/-! ## A296768.P11694368609605946088

`A077268(∏[A000005(n+3)])`
-/

namespace A296768.P11694368609605946088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077268 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296768.P11694368609605946088

/-! ## A296768.P5775181341196074203

`∑[n+1]-A001222(A005191(n))²`
-/

namespace A296768.P5775181341196074203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001222 (A005191 n).toNat ^ 2

end

end A296768.P5775181341196074203

/-! ## A296768.P13001911242177237058

`A105343(n)+A001222(A000088(n))`
-/

namespace A296768.P13001911242177237058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n + A001222 (A000088 n).toNat

end

end A296768.P13001911242177237058

/-! ## A296768.P14521818290354237065

`A111660(A246336(n)+A229944(n+1))`
-/

namespace A296768.P14521818290354237065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A246336 n + A229944 (n + 1)).toNat

end

end A296768.P14521818290354237065

/-! ## A296768.P17176631279689297819

`∑[A145390(A010051(n+3)+A000244(n))]`
-/

namespace A296768.P17176631279689297819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (A010051 (n + 3) + A000244 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296768.P17176631279689297819

/-!
# A296770: Row sums of A050158.

The programs for A296770, the canonical program `A296770.P4976538490288116259` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296770 has offset 0).

The definition of A296770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008549, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296770.P4976538490288116259

`A002457(n)-A008549(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A296770

/-- `A002457(n)-A008549(n)` -/
def P4976538490288116259.Spec : Prop :=
  ∀ n, P4976538490288116259.a n = A296770 n

theorem P4976538490288116259.correct : P4976538490288116259.Spec := by
  intro n
  simp only [A296770]

end A296770

/-! ## A296770.P3014026819011621360

`A027305(2*n)`
-/

namespace A296770.P3014026819011621360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027305 (2 * n)

end

end A296770.P3014026819011621360

namespace A296770

/-- `A027305(2*n)` -/
def P3014026819011621360.Spec : Prop :=
  ∀ n, P3014026819011621360.a n = A296770 n

end A296770

/-! ## A296770.P16206844242978662457

`A139262(n+1)+4^n`
-/

namespace A296770.P16206844242978662457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (n + 1) + (4 ^ n : ℤ)

end

end A296770.P16206844242978662457

namespace A296770

/-- `A139262(n+1)+4^n` -/
def P16206844242978662457.Spec : Prop :=
  ∀ n, P16206844242978662457.a n = A296770 n

end A296770

/-! ## A296770.P2749410161703292722

`A097070(n+2)-4^n`
-/

namespace A296770.P2749410161703292722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 2) - (4 ^ n : ℤ)

end

end A296770.P2749410161703292722

namespace A296770

/-- `A097070(n+2)-4^n` -/
def P2749410161703292722.Spec : Prop :=
  ∀ n, P2749410161703292722.a n = A296770 n

end A296770

/-! ## A296770.P6137085164729347648

`A001791(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A296770.P6137085164729347648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001791 n + 4 * a (n - 1)

end

end A296770.P6137085164729347648

namespace A296770

/-- `A001791(n)+4*a(n-1)` -/
def P6137085164729347648.Spec : Prop :=
  ∀ n, P6137085164729347648.a n = A296770 n

end A296770

/-! ## A296770.P15281968406319476653

`(n+2)*A001700(n)-4^n`
-/

namespace A296770.P15281968406319476653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001700 n - (4 ^ n : ℤ)

end

end A296770.P15281968406319476653

namespace A296770

/-- `(n+2)*A001700(n)-4^n` -/
def P15281968406319476653.Spec : Prop :=
  ∀ n, P15281968406319476653.a n = A296770 n

end A296770

/-! ## A296770.P4353549340986324888

`4*a(n-1)+n*A000108(n)` with `a(0)=1`
-/

namespace A296770.P4353549340986324888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (n : ℤ) * A000108 n

end

end A296770.P4353549340986324888

namespace A296770

/-- `4*a(n-1)+n*A000108(n)` -/
def P4353549340986324888.Spec : Prop :=
  ∀ n, P4353549340986324888.a n = A296770 n

end A296770

/-! ## A296770.P11858017429616236330

`A068552(n)+A051960(n)`
-/

namespace A296770.P11858017429616236330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068552 n + A051960 n

end

end A296770.P11858017429616236330

namespace A296770

/-- `A068552(n)+A051960(n)` -/
def P11858017429616236330.Spec : Prop :=
  ∀ n, P11858017429616236330.a n = A296770 n

end A296770

/-! ## A296770.P2036298545751864118

`A172060(n)+A001700(n)`
-/

namespace A296770.P2036298545751864118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172060 n + A001700 n

end

end A296770.P2036298545751864118

namespace A296770

/-- `A172060(n)+A001700(n)` -/
def P2036298545751864118.Spec : Prop :=
  ∀ n, P2036298545751864118.a n = A296770 n

end A296770

/-! ## A296770.P6555041257810753024

`A296665(n)+A001791(n)`
-/

namespace A296770.P6555041257810753024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296665 n + A001791 n

end

end A296770.P6555041257810753024

namespace A296770

/-- `A296665(n)+A001791(n)` -/
def P6555041257810753024.Spec : Prop :=
  ∀ n, P6555041257810753024.a n = A296770 n

end A296770

/-! ## A296770.P2452778044445658795

`record[A056040(n)-A294175(n)]`
-/

namespace A296770.P2452778044445658795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A294175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296770.P2452778044445658795

namespace A296770

/-- `record[A056040(n)-A294175(n)]` -/
def P2452778044445658795.Spec : Prop :=
  ∀ n, P2452778044445658795.a n = A296770 n

end A296770

/-! ## A296770.P6832866796609158994

`A194460(n+1)+A008549(n)`
-/

namespace A296770.P6832866796609158994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194460 (n + 1) + A008549 n

end

end A296770.P6832866796609158994

namespace A296770

/-- `A194460(n+1)+A008549(n)` -/
def P6832866796609158994.Spec : Prop :=
  ∀ n, P6832866796609158994.a n = A296770 n

end A296770

/-! ## A296770.P10323690151996909006

`A275329(2*n+1)-A000302(n)`
-/

namespace A296770.P10323690151996909006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275329 (2 * n + 1) - A000302 n

end

end A296770.P10323690151996909006

namespace A296770

/-- `A275329(2*n+1)-A000302(n)` -/
def P10323690151996909006.Spec : Prop :=
  ∀ n, P10323690151996909006.a n = A296770 n

end A296770

/-! ## A296770.P5154271792362927869

`A189911(2*n+1)-A000079(n)²`
-/

namespace A296770.P5154271792362927869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (2 * n + 1) - A000079 n ^ 2

end

end A296770.P5154271792362927869

namespace A296770

/-- `A189911(2*n+1)-A000079(n)²` -/
def P5154271792362927869.Spec : Prop :=
  ∀ n, P5154271792362927869.a n = A296770 n

end A296770

/-! ## A296770.P702592379554838365

`A189911(2*n+1)-A000079(2*n)`
-/

namespace A296770.P702592379554838365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (2 * n + 1) - A000079 (2 * n)

end

end A296770.P702592379554838365

namespace A296770

/-- `A189911(2*n+1)-A000079(2*n)` -/
def P702592379554838365.Spec : Prop :=
  ∀ n, P702592379554838365.a n = A296770 n

end A296770

/-! ## A296770.P10040135499916172953

`A242172(2*n)-A093387(2*n+1)`
-/

namespace A296770.P10040135499916172953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242172 (2 * n) - A093387 (2 * n + 1)

end

end A296770.P10040135499916172953

namespace A296770

/-- `A242172(2*n)-A093387(2*n+1)` -/
def P10040135499916172953.Spec : Prop :=
  ∀ n, P10040135499916172953.a n = A296770 n

end A296770

/-! ## A296770.P3768554099485215506

`A242172(2*n)-A294175(2*n+1)`
-/

namespace A296770.P3768554099485215506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242172 (2 * n) - A294175 (2 * n + 1)

end

end A296770.P3768554099485215506

namespace A296770

/-- `A242172(2*n)-A294175(2*n+1)` -/
def P3768554099485215506.Spec : Prop :=
  ∀ n, P3768554099485215506.a n = A296770 n

end A296770

/-! ## A296770.P8121519765940877409

`A107373(2*(n+1))+A001405(2*n+1)`
-/

namespace A296770.P8121519765940877409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) + A001405 (2 * n + 1)

end

end A296770.P8121519765940877409

namespace A296770

/-- `A107373(2*(n+1))+A001405(2*n+1)` -/
def P8121519765940877409.Spec : Prop :=
  ∀ n, P8121519765940877409.a n = A296770 n

end A296770

/-! ## A296770.P16767946550234299429

`A107373(2*(n+1))+A037952(2*n+1)`
-/

namespace A296770.P16767946550234299429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * (n + 1)) + A037952 (2 * n + 1)

end

end A296770.P16767946550234299429

namespace A296770

/-- `A107373(2*(n+1))+A037952(2*n+1)` -/
def P16767946550234299429.Spec : Prop :=
  ∀ n, P16767946550234299429.a n = A296770 n

end A296770

/-! ## A296770.P17088890356632750853

`A107373(2*(n+1))+A000984(n+1)/2`
-/

namespace A296770.P17088890356632750853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107373 (2 * (n + 1)) : ℚ) + (A000984 (n + 1) : ℚ) / 2

end

end A296770.P17088890356632750853

namespace A296770

/-- `A107373(2*(n+1))+A000984(n+1)/2` -/
def P17088890356632750853.Spec : Prop :=
  ∀ n, P17088890356632750853.a n = (A296770 n : ℚ)

end A296770

/-!
# A296771: Row sums of A050157.

The programs for A296771, the canonical program `A296771.P8574015642954426721` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296771 has offset 0).

The definition of A296771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296771.P10695320996275152074

`A027305(comp[2*(n+1)])`
-/

namespace A296771.P10695320996275152074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027305 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A296771.P10695320996275152074

namespace A296771

/-- `A027305(comp[2*(n+1)])` -/
def P10695320996275152074.Spec : Prop :=
  ∀ n, P10695320996275152074.a n = A296771 n

end A296771

/-! ## A296771.P1805732211852660740

`A002457(n)-A014314(2*n)`
-/

namespace A296771.P1805732211852660740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A014314 (2 * n)

end

end A296771.P1805732211852660740

namespace A296771

/-- `A002457(n)-A014314(2*n)` -/
def P1805732211852660740.Spec : Prop :=
  ∀ n, P1805732211852660740.a n = A296771 n

end A296771

/-! ## A296771.P1863151123224383874

`A000984(n)+A172060(n)/2`
-/

namespace A296771.P1863151123224383874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) + (A172060 n : ℚ) / 2

end

end A296771.P1863151123224383874

namespace A296771

/-- `A000984(n)+A172060(n)/2` -/
def P1863151123224383874.Spec : Prop :=
  ∀ n, P1863151123224383874.a n = (A296771 n : ℚ)

end A296771

/-! ## A296771.P8980992281848645278

`record[A056040(n+1)-A014314(n)]`
-/

namespace A296771.P8980992281848645278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) - A014314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296771.P8980992281848645278

namespace A296771

/-- `record[A056040(n+1)-A014314(n)]` -/
def P8980992281848645278.Spec : Prop :=
  ∀ n, P8980992281848645278.a n = A296771 n

end A296771

/-! ## A296771.P3072626751772611697

`A107373(2*n+1)+A000984(n)`
-/

namespace A296771.P3072626751772611697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * n + 1) + A000984 n

end

end A296771.P3072626751772611697

namespace A296771

/-- `A107373(2*n+1)+A000984(n)` -/
def P3072626751772611697.Spec : Prop :=
  ∀ n, P3072626751772611697.a n = A296771 n

end A296771

/-! ## A296771.P8574015642954426721

`A037965(n+1)-A294175(2*n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A296771

/-- `A037965(n+1)-A294175(2*n)` -/
def P8574015642954426721.Spec : Prop :=
  ∀ n, P8574015642954426721.a n = A296771 n

theorem P8574015642954426721.correct : P8574015642954426721.Spec := by
  intro n
  simp only [A296771]

end A296771

/-! ## A296771.P7164590080191719738

`A296665(n)-A107373(2*n+1)`
-/

namespace A296771.P7164590080191719738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296665 n - A107373 (2 * n + 1)

end

end A296771.P7164590080191719738

namespace A296771

/-- `A296665(n)-A107373(2*n+1)` -/
def P7164590080191719738.Spec : Prop :=
  ∀ n, P7164590080191719738.a n = A296771 n

end A296771

/-! ## A296771.P17755903340423815455

`A189911(2*n)-A294175(2*n)`
-/

namespace A296771.P17755903340423815455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (2 * n) - A294175 (2 * n)

end

end A296771.P17755903340423815455

namespace A296771

/-- `A189911(2*n)-A294175(2*n)` -/
def P17755903340423815455.Spec : Prop :=
  ∀ n, P17755903340423815455.a n = A296771 n

end A296771

/-! ## A296771.P9577694339300285489

`A107373(2*n+1)+A001405(2*n)`
-/

namespace A296771.P9577694339300285489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * n + 1) + A001405 (2 * n)

end

end A296771.P9577694339300285489

namespace A296771

/-- `A107373(2*n+1)+A001405(2*n)` -/
def P9577694339300285489.Spec : Prop :=
  ∀ n, P9577694339300285489.a n = A296771 n

end A296771

/-! ## A296771.P914363086977007827

`A107373(2*n+1)+A056040(2*n)`
-/

namespace A296771.P914363086977007827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * n + 1) + A056040 (2 * n)

end

end A296771.P914363086977007827

namespace A296771

/-- `A107373(2*n+1)+A056040(2*n)` -/
def P914363086977007827.Spec : Prop :=
  ∀ n, P914363086977007827.a n = A296771 n

end A296771

/-! ## A296771.P15890799525486382692

`A126869(2*n)+A107373(2*n+1)`
-/

namespace A296771.P15890799525486382692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + A107373 (2 * n + 1)

end

end A296771.P15890799525486382692

namespace A296771

/-- `A126869(2*n)+A107373(2*n+1)` -/
def P15890799525486382692.Spec : Prop :=
  ∀ n, P15890799525486382692.a n = A296771 n

end A296771

/-! ## A296771.P14544992080762217460

`A126930(2*n)+A107373(2*n+1)`
-/

namespace A296771.P14544992080762217460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) + A107373 (2 * n + 1)

end

end A296771.P14544992080762217460

namespace A296771

/-- `A126930(2*n)+A107373(2*n+1)` -/
def P14544992080762217460.Spec : Prop :=
  ∀ n, P14544992080762217460.a n = A296771 n

end A296771

/-! ## A296771.P6593970217675633062

`A129383(2*n)+A107373(2*n+1)`
-/

namespace A296771.P6593970217675633062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n) + A107373 (2 * n + 1)

end

end A296771.P6593970217675633062

namespace A296771

/-- `A129383(2*n)+A107373(2*n+1)` -/
def P6593970217675633062.Spec : Prop :=
  ∀ n, P6593970217675633062.a n = A296771 n

end A296771

/-! ## A296771.P12610389835003948816

`A056040(2*n+1)-A014314(2*n)`
-/

namespace A296771.P12610389835003948816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 1) - A014314 (2 * n)

end

end A296771.P12610389835003948816

namespace A296771

/-- `A056040(2*n+1)-A014314(2*n)` -/
def P12610389835003948816.Spec : Prop :=
  ∀ n, P12610389835003948816.a n = A296771 n

end A296771

/-! ## A296771.P5761678549327436247

`A100071(2*n+1)-A014314(2*n)`
-/

namespace A296771.P5761678549327436247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n + 1) - A014314 (2 * n)

end

end A296771.P5761678549327436247

namespace A296771

/-- `A100071(2*n+1)-A014314(2*n)` -/
def P5761678549327436247.Spec : Prop :=
  ∀ n, P5761678549327436247.a n = A296771 n

end A296771

/-! ## A296771.P3765778226870748294

`A296663(2*n)-A107373(2*n+1)`
-/

namespace A296771.P3765778226870748294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296663 (2 * n) - A107373 (2 * n + 1)

end

end A296771.P3765778226870748294

namespace A296771

/-- `A296663(2*n)-A107373(2*n+1)` -/
def P3765778226870748294.Spec : Prop :=
  ∀ n, P3765778226870748294.a n = A296771 n

end A296771

/-! ## A296771.P15275018298177635647

`(A296663(2*n)+A001405(2*n))/2`
-/

namespace A296771.P15275018298177635647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296663 (2 * n) + A001405 (2 * n) : ℚ) / 2

end

end A296771.P15275018298177635647

namespace A296771

/-- `(A296663(2*n)+A001405(2*n))/2` -/
def P15275018298177635647.Spec : Prop :=
  ∀ n, P15275018298177635647.a n = (A296771 n : ℚ)

end A296771

/-! ## A296771.P9564907376277141265

`A210736(2*n+1)+A107373(2*n+1)`
-/

namespace A296771.P9564907376277141265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) + A107373 (2 * n + 1)

end

end A296771.P9564907376277141265

namespace A296771

/-- `A210736(2*n+1)+A107373(2*n+1)` -/
def P9564907376277141265.Spec : Prop :=
  ∀ n, P9564907376277141265.a n = A296771 n

end A296771

/-! ## A296771.P15430473263321260357

`A001405(2*n+1)*(n+1)-A014314(2*n)`
-/

namespace A296771.P15430473263321260357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) * (n + 1 : ℤ) - A014314 (2 * n)

end

end A296771.P15430473263321260357

namespace A296771

/-- `A001405(2*n+1)*(n+1)-A014314(2*n)` -/
def P15430473263321260357.Spec : Prop :=
  ∀ n, P15430473263321260357.a n = A296771 n

end A296771

/-! ## A296771.P12485210303614142028

`A037965(n+1)+A032443(n)-A000302(n)`
-/

namespace A296771.P12485210303614142028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 (n + 1) + (A032443 n - A000302 n)

end

end A296771.P12485210303614142028

namespace A296771

/-- `A037965(n+1)+A032443(n)-A000302(n)` -/
def P12485210303614142028.Spec : Prop :=
  ∀ n, P12485210303614142028.a n = A296771 n

end A296771

/-!
# A296772: Triangle read by rows in which row n lists the compositions of n ordered first by decreasing length and then reverse-lexicographically.

The programs for A296772, there is no canonical definition to state claims against.
-/

/-! ## A296772.P5701910465242694830

`A108244(n+1)+A337260(n+1)-A296773(n+1)`
-/

namespace A296772.P5701910465242694830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (n + 1) + (A337260 (n + 1) - A296773 (n + 1))

end

end A296772.P5701910465242694830

/-! ## A296772.P13905552032213148553

`A269303(A337260(n+1)+A262079(n+1))`
-/

namespace A296772.P13905552032213148553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (A337260 (n + 1) + A262079 (n + 1)).toNat

end

end A296772.P13905552032213148553

/-! ## A296772.P5798656116540062483

`A057427(∏{digits}[n, 2^#])*A337260(n+1)`
-/

namespace A296772.P5798656116540062483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod * A337260 (n + 1)

end

end A296772.P5798656116540062483

/-! ## A296772.P267911105314747163

`gcd(A134078(A056105(n)), A337260(n+1))`
-/

namespace A296772.P267911105314747163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134078 (A056105 n).toNat) (A337260 (n + 1))

end

end A296772.P267911105314747163

/-! ## A296772.P17618779918835030840

`A337260(n+1)+A000007(A001263(n+1))`
-/

namespace A296772.P17618779918835030840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (n + 1) + A000007 (A001263 (n + 1)).toNat

end

end A296772.P17618779918835030840

/-! ## A296772.P18085998297116830649

`A337260(n+1)+A000007(A103607(n+1))`
-/

namespace A296772.P18085998297116830649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (n + 1) + A000007 (A103607 (n + 1)).toNat

end

end A296772.P18085998297116830649

/-! ## A296772.P9086142735635606008

`A337260(n+1)+A014375(A285572(n+1))`
-/

namespace A296772.P9086142735635606008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (n + 1) + A014375 (A285572 (n + 1)).toNat

end

end A296772.P9086142735635606008

/-! ## A296772.P6458462108487882552

`A001222(A107808(n+1))*A337260(n+1)`
-/

namespace A296772.P6458462108487882552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107808 (n + 1)).toNat * A337260 (n + 1)

end

end A296772.P6458462108487882552

/-! ## A296772.P7497490943866654408

`and(A002223(n+1), A337260(n+1))`
-/

namespace A296772.P7497490943866654408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A337260 (n + 1))

end

end A296772.P7497490943866654408

/-! ## A296772.P3632092937484118707

`A337260(and(1, A045535(n))+n)`
-/

namespace A296772.P3632092937484118707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (Int.land 1 (A045535 n) + (n : ℤ)).toNat

end

end A296772.P3632092937484118707

/-!
# A296773: Triangle read by rows in which row n lists the compositions of n ordered first by decreasing length and then lexicographically.

The programs for A296773, there is no canonical definition to state claims against.
-/

/-! ## A296773.P725212913132752882

`A108244(n+1)+A337260(n+1)-A296772(n+1)`
-/

namespace A296773.P725212913132752882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (n + 1) + (A337260 (n + 1) - A296772 (n + 1))

end

end A296773.P725212913132752882

/-! ## A296773.P16710397342203935308

`A108244(A296765(n+1))`
-/

namespace A296773.P16710397342203935308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A296765 (n + 1)).toNat

end

end A296773.P16710397342203935308

/-! ## A296773.P7880740149077425292

`A108244(A262079(n+1)+n)`
-/

namespace A296773.P7880740149077425292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A262079 (n + 1) + (n : ℤ)).toNat

end

end A296773.P7880740149077425292

/-! ## A296773.P13645826130972394364

`or(A063524((n+1)*(n²+2)/2), A108244(n+1))`
-/

namespace A296773.P13645826130972394364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n ^ 2 + 2 : ℚ) / 2))).toNat) (A108244 (n + 1))

end

end A296773.P13645826130972394364

/-! ## A296773.P18110061116926447248

`A003602(A329562(n))*A108244(n+1)`
-/

namespace A296773.P18110061116926447248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A329562 n).toNat * A108244 (n + 1)

end

end A296773.P18110061116926447248

/-! ## A296773.P5616314973925071416

`A108244(n+1)^A071178(A056105(n))`
-/

namespace A296773.P5616314973925071416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108244 (n + 1) : ℚ) ^ (A071178 (A056105 n).toNat : ℤ)

end

end A296773.P5616314973925071416

/-! ## A296773.P10627474132266477928

`A108244(n+1)+A000007(A107811(n+1))`
-/

namespace A296773.P10627474132266477928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (n + 1) + A000007 (A107811 (n + 1)).toNat

end

end A296773.P10627474132266477928

/-! ## A296773.P6327897213767912505

`A108244(n+1)+A000122(A134754(n+2))`
-/

namespace A296773.P6327897213767912505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (n + 1) + A000122 (A134754 (n + 2)).toNat

end

end A296773.P6327897213767912505

/-! ## A296773.P2808857665893725246

`A090740(A007641(n+1))*A108244(n+1)`
-/

namespace A296773.P2808857665893725246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (A007641 (n + 1)).toNat * A108244 (n + 1)

end

end A296773.P2808857665893725246

/-! ## A296773.P10542173178763819754

`gcd(A108244(n+1), A272599(A124218(n+1)))`
-/

namespace A296773.P10542173178763819754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108244 (n + 1)) (A272599 (A124218 (n + 1)).toNat)

end

end A296773.P10542173178763819754

/-!
# A296774: Triangle read by rows in which row n lists the compositions of n ordered first by length and then reverse-lexicographically.

The programs for A296774, there is no canonical definition to state claims against.
-/

/-! ## A296774.P11817942547800215874

`A337243(n+1)+A337259(n+1)-A124734(n+1)`
-/

namespace A296774.P11817942547800215874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (n + 1) + (A337259 (n + 1) - A124734 (n + 1))

end

end A296774.P11817942547800215874

/-! ## A296774.P10835046662420346486

`A337243(or(n+1, A034432(n+1)))`
-/

namespace A296774.P10835046662420346486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (Int.lor (n + 1 : ℤ) (A034432 (n + 1))).toNat

end

end A296774.P10835046662420346486

/-! ## A296774.P16153593416192093390

`A337243(n+1)*A337266(A034432(n+1))`
-/

namespace A296774.P16153593416192093390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (n + 1) * A337266 (A034432 (n + 1)).toNat

end

end A296774.P16153593416192093390

/-! ## A296774.P3161229490893927357

`A337243(lcm(A008833(n+1), A167976(n+1)))`
-/

namespace A296774.P3161229490893927357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (Int.lcm (A008833 (n + 1)) (A167976 (n + 1)))

end

end A296774.P3161229490893927357

/-! ## A296774.P16015810416405118805

`A032548(n+2)*A337243(n*A032548(n+1)+1)`
-/

namespace A296774.P16015810416405118805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (n + 2) * A337243 ((n : ℤ) * A032548 (n + 1) + 1).toNat

end

end A296774.P16015810416405118805

/-!
# A296775: Expansion of 1/Sum_{k>=0} A000326(k+1)*x^k.

The programs for A296775, the canonical program `A296775.P5434862244887597103` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296775 has offset 0).

The definition of A296775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296775.P5434862244887597103

`a(n-1)-3*(a(n-1)+a(n-1)%3/n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296775

/-- `a(n-1)-3*(a(n-1)+a(n-1)%3/n)` -/
def P5434862244887597103.Spec : Prop :=
  ∀ n, P5434862244887597103.a n = (A296775 n : ℚ)

end A296775

/-!
# A296776: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 2*n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296776, there is no canonical definition to state claims against.
-/

/-! ## A296776.P10923512768165857189

`A000071(n+1)+A000027(A294366(n))`
-/

namespace A296776.P10923512768165857189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A000027 (A294366 n).toNat

end

end A296776.P10923512768165857189

/-! ## A296776.P15820967065508609160

`A028310(A294366(n)+A000071(n+1))`
-/

namespace A296776.P15820967065508609160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A294366 n + A000071 (n + 1)).toNat

end

end A296776.P15820967065508609160

/-! ## A296776.P14794847304491183971

`A294366(n)+A000071(A187829(n+1))`
-/

namespace A296776.P14794847304491183971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294366 n + A000071 (A187829 (n + 1)).toNat

end

end A296776.P14794847304491183971

/-! ## A296776.P3425396570580581901

`A294552(A062399(n))+A000045(n)`
-/

namespace A296776.P3425396570580581901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294552 (A062399 n).toNat + A000045 n

end

end A296776.P3425396570580581901

/-! ## A296776.P879967076818783285

`A294552(n)+A000045(A351870(n))`
-/

namespace A296776.P879967076818783285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294552 n + A000045 (A351870 n).toNat

end

end A296776.P879967076818783285

/-!
# A296779: Detour index of the n X n grid graph.

The programs for A296779, the canonical program `A296779.P9301073313345564947` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296779 has offset 1).

The definition of A296779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296779.P9301073313345564947

`A296819((n+1)²)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A296779

/-- `A296819((n+1)²)` -/
def P9301073313345564947.Spec : Prop :=
  ∀ n, P9301073313345564947.a n = A296779 (n + 1)

theorem P9301073313345564947.correct : P9301073313345564947.Spec := by
  intro n
  simp only [A296779, Nat.add_sub_cancel]

end A296779

/-! ## A296779.P16850435790416159698

`record[A296819(ceil(or(2, n)/2)²)]`
-/

namespace A296779.P16850435790416159698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (⌈(Nat.lor 2 n : ℚ) / 2⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P16850435790416159698

namespace A296779

/-- `record[A296819(ceil(or(2, n)/2)²)]` -/
def P16850435790416159698.Spec : Prop :=
  ∀ n, P16850435790416159698.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P8731233500406511709

`record[A296819(A065648(n)²)]`
-/

namespace A296779.P8731233500406511709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P8731233500406511709

namespace A296779

/-- `record[A296819(A065648(n)²)]` -/
def P8731233500406511709.Spec : Prop :=
  ∀ n, P8731233500406511709.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P139298659919606843

`record[A296819(A100727(n)²)]`
-/

namespace A296779.P139298659919606843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A100727 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P139298659919606843

namespace A296779

/-- `record[A296819(A100727(n)²)]` -/
def P139298659919606843.Spec : Prop :=
  ∀ n, P139298659919606843.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P4586533747956426206

`record[A296819(A106466(n)²)]`
-/

namespace A296779.P4586533747956426206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P4586533747956426206

namespace A296779

/-- `record[A296819(A106466(n)²)]` -/
def P4586533747956426206.Spec : Prop :=
  ∀ n, P4586533747956426206.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P6758162760119017668

`record[A296819(A117910(n)²)]`
-/

namespace A296779.P6758162760119017668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P6758162760119017668

namespace A296779

/-- `record[A296819(A117910(n)²)]` -/
def P6758162760119017668.Spec : Prop :=
  ∀ n, P6758162760119017668.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P321135945562010335

`record[A296819(A126759(n)²)]`
-/

namespace A296779.P321135945562010335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P321135945562010335

namespace A296779

/-- `record[A296819(A126759(n)²)]` -/
def P321135945562010335.Spec : Prop :=
  ∀ n, P321135945562010335.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P18133307346508848903

`record[A296819(A134478(n)²)]`
-/

namespace A296779.P18133307346508848903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P18133307346508848903

namespace A296779

/-- `record[A296819(A134478(n)²)]` -/
def P18133307346508848903.Spec : Prop :=
  ∀ n, P18133307346508848903.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P17245655148925756525

`record[A296819(A154958(n)²)]`
-/

namespace A296779.P17245655148925756525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A154958 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P17245655148925756525

namespace A296779

/-- `record[A296819(A154958(n)²)]` -/
def P17245655148925756525.Spec : Prop :=
  ∀ n, P17245655148925756525.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P489506772297513415

`record[A296819(A344180(n)²)]`
-/

namespace A296779.P489506772297513415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A344180 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P489506772297513415

namespace A296779

/-- `record[A296819(A344180(n)²)]` -/
def P489506772297513415.Spec : Prop :=
  ∀ n, P489506772297513415.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P12088946904691372675

`record[A296819(A133819(n+1))]`
-/

namespace A296779.P12088946904691372675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A133819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P12088946904691372675

namespace A296779

/-- `record[A296819(A133819(n+1))]` -/
def P12088946904691372675.Spec : Prop :=
  ∀ n, P12088946904691372675.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P2353422232683818569

`record[A296819(A123596(n+2))]`
-/

namespace A296779.P2353422232683818569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A123596 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296779.P2353422232683818569

namespace A296779

/-- `record[A296819(A123596(n+2))]` -/
def P2353422232683818569.Spec : Prop :=
  ∀ n, P2353422232683818569.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P12088898183438049495

`lcm(2, A296819(A000290(n+1)))`
-/

namespace A296779.P12088898183438049495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A296819 (A000290 (n + 1)).toNat)

end

end A296779.P12088898183438049495

namespace A296779

/-- `lcm(2, A296819(A000290(n+1)))` -/
def P12088898183438049495.Spec : Prop :=
  ∀ n, (P12088898183438049495.a n : ℤ) = A296779 (n + 1)

end A296779

/-! ## A296779.P14394204231032433955

`A000041(C(2, n+2))*A296819((n+1)*(n+1))`
-/

namespace A296779.P14394204231032433955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A296819 ((n + 1) * (n + 1))

end

end A296779.P14394204231032433955

namespace A296779

/-- `A000041(C(2, n+2))*A296819((n+1)*(n+1))` -/
def P14394204231032433955.Spec : Prop :=
  ∀ n, P14394204231032433955.a n = A296779 (n + 1)

end A296779

/-! ## A296779.P1035132180587300280

`A007318(C(2, n+1))*A296819(A000290(n+1))`
-/

namespace A296779.P1035132180587300280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A296819 (A000290 (n + 1)).toNat

end

end A296779.P1035132180587300280

namespace A296779

/-- `A007318(C(2, n+1))*A296819(A000290(n+1))` -/
def P1035132180587300280.Spec : Prop :=
  ∀ n, P1035132180587300280.a n = A296779 (n + 1)

end A296779

/-!
# A296780: Detour index of the n X n X n grid graph.

The programs for A296780, there is no canonical definition to state claims against.
-/

/-! ## A296780.P15112653115984422296

`A296819(Δ[∑[n]²])`
-/

namespace A296780.P15112653115984422296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A296780.P15112653115984422296

/-! ## A296780.P6108260986048231294

`record[A296819(A117910(n)^3)]`
-/

namespace A296780.P6108260986048231294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A117910 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296780.P6108260986048231294

/-! ## A296780.P11755305358061432946

`record[A296819(A126759(n)^3)]`
-/

namespace A296780.P11755305358061432946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A126759 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296780.P11755305358061432946

/-! ## A296780.P740828081634386262

`record[A296819(A193739(n)^3)]`
-/

namespace A296780.P740828081634386262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A193739 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296780.P740828081634386262

/-! ## A296780.P7287016943759132588

`record[A296819(A344180(n)^3)]`
-/

namespace A296780.P7287016943759132588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (A344180 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296780.P7287016943759132588

/-!
# A296785: Detour index for the n-transposition graph.

The programs for A296785, there is no canonical definition to state claims against.
-/

/-! ## A296785.P8825007694404590711

`A296819((n+1)!)`
-/

namespace A296785.P8825007694404590711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (Nat.factorial (n + 1))

end

end A296785.P8825007694404590711

/-! ## A296785.P14125978572846536118

`A296819(∏[n+1])`
-/

namespace A296785.P14125978572846536118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A296785.P14125978572846536118

/-! ## A296785.P7278662539002049610

`record[A296819((n-floor(sqrt(n))²)!)]`
-/

namespace A296785.P7278662539002049610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (Nat.factorial ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296785.P7278662539002049610

/-!
# A296786: a(1) = a(2) = a(5) = 2, a(3) = 1, a(4) = 3, a(6) = 5; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 6.

The programs for A296786, the canonical program `A296786.P5237278963540881722` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296786 has offset 1).

The definition of A296786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A296786.P5237278963540881722`, by `A296786.P5237278963540881722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296786.P5237278963540881722

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3, a(4)=2, a(5)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296786

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P5237278963540881722.Spec : Prop :=
  ∀ n, (P5237278963540881722.a n : ℤ) = A296786 (n + 1)

theorem P5237278963540881722.correct : P5237278963540881722.Spec := by
  intro n
  simp only [A296786, Nat.add_sub_cancel]

end A296786

/-!
# A296787: Expansion of e.g.f. exp(x*arctan(x)) (even powers only).

The programs for A296787, there is no canonical definition to state claims against.
-/

/-! ## A296787.P8916566350891463106

`A004277(n)*A191300(n)`
-/

namespace A296787.P8916566350891463106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A191300 n

end

end A296787.P8916566350891463106

/-! ## A296787.P13037481374838093189

`A026741(A008574(n))*A191300(n)`
-/

namespace A296787.P13037481374838093189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008574 n).toNat * A191300 n

end

end A296787.P13037481374838093189

/-! ## A296787.P3099301686719347499

`A007318(A084849(n))*A191300(n)`
-/

namespace A296787.P3099301686719347499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A084849 n).toNat * A191300 n

end

end A296787.P3099301686719347499

/-! ## A296787.P3114797573233561707

`A007318(A000124(2*n))*A191300(n)`
-/

namespace A296787.P3114797573233561707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 (2 * n)).toNat * A191300 n

end

end A296787.P3114797573233561707

/-! ## A296787.P15358155817631597641

`A191300(n)*A276775(A000096(n))`
-/

namespace A296787.P15358155817631597641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191300 n * A276775 (A000096 n).toNat

end

end A296787.P15358155817631597641

/-!
# A296788: Expansion of e.g.f. exp(x*arcsinh(x)) (even powers only).

The programs for A296788, there is no canonical definition to state claims against.
-/

/-! ## A296788.P1086592080188061247

`A072749(lcm(5, (n+1)^n))`
-/

namespace A296788.P1086592080188061247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072749 (Nat.lcm 5 ((n + 1) ^ n))

end

end A296788.P1086592080188061247

/-!
# A296789: Expansion of e.g.f. exp(x*arctanh(x)) (even powers only).

The programs for A296789, there is no canonical definition to state claims against.
-/

/-! ## A296789.P10488972423572443759

`A016813(A235938(2*(n+1)))+A000225(n)`
-/

namespace A296789.P10488972423572443759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A235938 (2 * (n + 1))).toNat + A000225 n

end

end A296789.P10488972423572443759

/-!
# A296791: Expansion of e.g.f. sech(x*sec(x)) (even powers only).

The programs for A296791, there is no canonical definition to state claims against.
-/

/-! ## A296791.P6928555579640192704

`A009016(n)+A004442(A000364(n))`
-/

namespace A296791.P6928555579640192704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009016 n + A004442 (A000364 n).toNat

end

end A296791.P6928555579640192704

/-!
# A296792: Expansion of e.g.f. (sec(x) + tan(x))/sqrt(1 - 2*x).

The programs for A296792, there is no canonical definition to state claims against.
-/

/-! ## A296792.P9946474242186799377

`A034888(A305990(n)+1)`
-/

namespace A296792.P9946474242186799377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A305990 n + 1).toNat

end

end A296792.P9946474242186799377

/-! ## A296792.P10071742159802206732

`A059531(lcm(n, A006153(n))+1)`
-/

namespace A296792.P10071742159802206732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (Int.lcm (n : ℤ) (A006153 n) + 1)

end

end A296792.P10071742159802206732

/-!
# A296793: a(n) = n! * [x^n] exp(x)*(sec(x) + tan(x))^n.

The programs for A296793, there is no canonical definition to state claims against.
-/

/-! ## A296793.P3930368619172947363

`A322268(∑[4*n])`
-/

namespace A296793.P3930368619172947363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296793.P3930368619172947363

/-! ## A296793.P12990179072519727395

`record[A322268(∑[A186731(n)])]`
-/

namespace A296793.P12990179072519727395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322268 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296793.P12990179072519727395

/-!
# A296795: Numbers k such that m = 2*k is the middle side in a Heronian triangle with sides m - 11, m, m + 11.

The programs for A296795, the canonical program `A296795.P14250787412040389581` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296795 has offset 0).

The definition of A296795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296795.P14250787412040389581

`4*a(n-3)-a(n-6)` with `a(0)=13, a(1)=14, a(2)=22, a(3)=38, a(4)=43, a(5)=77`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296795

/-- `4*a(n-3)-a(n-6)` -/
def P14250787412040389581.Spec : Prop :=
  ∀ n, P14250787412040389581.a n = A296795 n

theorem P14250787412040389581.correct : P14250787412040389581.Spec := by
  intro n
  simp only [A296795]

end A296795

/-!
# A296796: Numbers k such that k is the altitude of a Heronian triangle with sides m - 11, m, m + 11.

The programs for A296796, the canonical program `A296796.P11861295929241535509` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296796 has offset 0).

The definition of A296796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296796.P11861295929241535509

`4*a(n-3)-a(n-6)` with `a(0)=12, a(1)=15, a(2)=33, a(3)=63, a(4)=72, a(5)=132`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296796

/-- `4*a(n-3)-a(n-6)` -/
def P11861295929241535509.Spec : Prop :=
  ∀ n, P11861295929241535509.a n = A296796 n

theorem P11861295929241535509.correct : P11861295929241535509.Spec := by
  intro n
  simp only [A296796]

end A296796

/-! ## A296796.P3921033391759890188

`A296795(n+3)-2*A296795(n)`
-/

namespace A296796.P3921033391759890188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296795 (n + 3) - 2 * A296795 n

end

end A296796.P3921033391759890188

namespace A296796

/-- `A296795(n+3)-2*A296795(n)` -/
def P3921033391759890188.Spec : Prop :=
  ∀ n, P3921033391759890188.a n = A296796 n

end A296796

/-! ## A296796.P4958628215748886990

`A296795(n+3)-A005843(A296795(n))`
-/

namespace A296796.P4958628215748886990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296795 (n + 3) - A005843 (A296795 n).toNat

end

end A296796.P4958628215748886990

namespace A296796

/-- `A296795(n+3)-A005843(A296795(n))` -/
def P4958628215748886990.Spec : Prop :=
  ∀ n, P4958628215748886990.a n = A296796 n

end A296796

/-!
# A296797: Number of n X n 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1's.

The programs for A296797, there is no canonical definition to state claims against.
-/

/-! ## A296797.P16638995097981519139

`A296804(∑[4*n]+1)`
-/

namespace A296797.P16638995097981519139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296797.P16638995097981519139

/-! ## A296797.P12054713835697795084

`record[A214505(n)*A296804(n+1)]`
-/

namespace A296797.P12054713835697795084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A296804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296797.P12054713835697795084

/-! ## A296797.P11820968952894526391

`A326626(n)+A296804(A001844(n))`
-/

namespace A296797.P11820968952894526391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A296804 (A001844 n).toNat

end

end A296797.P11820968952894526391

/-! ## A296797.P7957419718770081479

`A296804(A001844(n))^A178334(n)`
-/

namespace A296797.P7957419718770081479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296804 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A296797.P7957419718770081479

/-! ## A296797.P13215923574536262135

`gcd(A000038(n), A296804(A001844(n)))`
-/

namespace A296797.P13215923574536262135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296804 (A001844 n).toNat)

end

end A296797.P13215923574536262135

/-!
# A296798: Number of n X 2 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1s.

The programs for A296798, there is no canonical definition to state claims against.
-/

/-! ## A296798.P11586636527741211139

`A296804(∑[n+1]+2)`
-/

namespace A296798.P11586636527741211139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296798.P11586636527741211139

/-! ## A296798.P17706198778110299097

`A296804(A000096(n)+3)*A304042(n)`
-/

namespace A296798.P17706198778110299097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A000096 n + 3).toNat * A304042 n

end

end A296798.P17706198778110299097

/-! ## A296798.P2539440908111948436

`or(A000038(n), A296804(A000096(n)+3))`
-/

namespace A296798.P2539440908111948436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A296804 (A000096 n + 3).toNat)

end

end A296798.P2539440908111948436

/-! ## A296798.P5180706714276469967

`A296804(A000096(n)+3)+A024000(n)%((-1)^n)`
-/

namespace A296798.P5180706714276469967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A000096 n + 3).toNat + Int.tmod (A024000 n) ((-1) ^ n)

end

end A296798.P5180706714276469967

/-! ## A296798.P15605939960692694152

`record[A296804(A000096(A137735(n)))]`
-/

namespace A296798.P15605939960692694152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A000096 (A137735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296798.P15605939960692694152

/-!
# A296799: Number of nX3 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1s.

The programs for A296799, there is no canonical definition to state claims against.
-/

/-! ## A296799.P16985123035613960974

`A296804(∑[n+2]+4)`
-/

namespace A296799.P16985123035613960974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296799.P16985123035613960974

/-! ## A296799.P6318198483433579472

`lcm(A130151(n), A296804(A167614(n+1)))`
-/

namespace A296799.P6318198483433579472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130151 n) (A296804 (A167614 (n + 1)).toNat)

end

end A296799.P6318198483433579472

/-! ## A296799.P9258819851903867311

`or(A000007(n), A296804(A167614(n+1)))`
-/

namespace A296799.P9258819851903867311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296804 (A167614 (n + 1)).toNat)

end

end A296799.P9258819851903867311

/-! ## A296799.P17433215432964620660

`or(A000038(n), A296804(A167614(n+1)))`
-/

namespace A296799.P17433215432964620660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A296804 (A167614 (n + 1)).toNat)

end

end A296799.P17433215432964620660

/-! ## A296799.P2243277072665720656

`A296804(A167614(n+1))%A080125(n+1)`
-/

namespace A296799.P2243277072665720656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296804 (A167614 (n + 1)).toNat) (A080125 (n + 1))

end

end A296799.P2243277072665720656

